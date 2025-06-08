#!/usr/bin/env bash

# Interactive script for Latenode documentation
# Combines functionality of all documentation utilities

set -e

# Function to display spinner
spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    local msg="$2"
    local i=0
    
    # Save current cursor position
    tput sc
    
    while ps -p $pid > /dev/null; do
        # Restore cursor position
        tput rc
        # Clear line
        tput el
        # Display message and spinner
        printf "%s [%c]" "$msg" "${spinstr:$i:1}"
        i=$(( (i + 1) % 4 ))
        sleep $delay
    done
    
    # Clear line after completion
    tput rc
    tput el
}

# Function to run command with animation
run_with_spinner() {
    local msg="$1"
    shift
    "$@" &
    local pid=$!
    spinner $pid "$msg"
    wait $pid
    return $?
}

# Function for path autocompletion
read_dir() {
    local prompt="$1"
    local dir
    # Enable readline support
    if [ -t 0 ]; then
        # Use readline directly with prompt
        read -e -p "$prompt" dir
    else
        read -p "$prompt" dir
    fi
    echo "$dir"
}

# Function to check directory
check_directory() {
    if [ -z "$1" ]; then
        echo "Error: directory not specified"
        return 1
    fi
    if [ ! -d "$1" ]; then
        echo "Error: '$1' is not a directory"
        return 1
    fi
    return 0
}

# Function to rename Latenode files
rename_latenode_files() {
    local TARGET_DIR="$1"
    shopt -s nullglob

    for file in "$TARGET_DIR"/*.md; do
        fname="${file##*/}"
        fname="${fname%.md}"
        IFS='_' read -r -a parts <<< "$fname"

        if [ "${#parts[@]}" -ge 2 ]; then
            category="${parts[1]}"
            if [ "${#parts[@]}" -ge 5 ]; then
                page="${parts[3]}"
                newname="${category}_${page}.md"
            else
                newname="${category}.md"
            fi

            newpath="$TARGET_DIR/$newname"
            if [ ! -e "$newpath" ]; then
                mv "$file" "$newpath"
            else
                echo "Skipping '$file' → '$newpath' (file already exists)"
            fi
        else
            echo "Unrecognized filename structure: $file"
        fi
    done
}

# Function to rename files by title
rename_by_title() {
    local TARGET_DIR="$1"
    export LC_CTYPE=en_US.UTF-8
    shopt -s nullglob

    for file in "$TARGET_DIR"/*.md; do
        [ -f "$file" ] || continue
        title=$(grep -m1 '^title:' "$file" | sed -E 's/^title:[[:space:]]*"(.+)"$/\1/')
        title=${title%" | Nodul"}
        safe=$(printf '%s' "$title" | \
            perl -CSD -Mopen=locale -ne '
                s/\s+/_/g;
                s/[^\p{L}\p{N}_\.\-]//g;
                print
            ')
        newpath="$TARGET_DIR/$safe.md"
        if [ "$file" != "$newpath" ]; then
            if [ ! -e "$newpath" ]; then
                mv "$file" "$newpath"
            else
                echo "Skipping '$file' → '$newpath' (file already exists)"
            fi
        fi
    done
}

# Function to remove empty files
remove_empty_files() {
    local DIR="$1"
    shopt -s nullglob

    for f in "$DIR"/*.md; do
        if ! grep -vE '^(---\s*$|url:.*|title:.*|\s*)$' "$f" | grep -q .; then
            echo "Deleting empty file: $f"
            rm "$f"
        fi
    done
}

# Function to remove emojis
remove_emojis() {
    local TARGET_DIR="$1"
    shopt -s nullglob

    for file in "$TARGET_DIR"/*.md; do
        [ -f "$file" ] || continue
        perl -CSD -i -pe 's/\p{Emoji}//g' "$file"
    done
}

# Function for batch documentation processing
process_all_docs() {
    local doc_type
    local latenode_dir=""
    local nodul_dir=""

    # Ask for documentation type
    echo "Select documentation type to process:"
    echo "1. Latenode"
    echo "2. Nodul"
    echo "3. All"
    echo -n "Your choice (1-3): "
    read -r doc_choice

    case $doc_choice in
        1)
            doc_type="latenode"
            latenode_dir=$(read_dir "Enter Latenode documentation directory path: ")
            if ! check_directory "$latenode_dir"; then
                echo "Error: invalid Latenode directory"
                return 1
            fi
            ;;
        2)
            doc_type="nodul"
            nodul_dir=$(read_dir "Enter Nodul documentation directory path: ")
            if ! check_directory "$nodul_dir"; then
                echo "Error: invalid Nodul directory"
                return 1
            fi
            ;;
        3)
            doc_type="all"
            latenode_dir=$(read_dir "Enter Latenode documentation directory path: ")
            if ! check_directory "$latenode_dir"; then
                echo "Error: invalid Latenode directory"
                return 1
            fi
            nodul_dir=$(read_dir "Enter Nodul documentation directory path: ")
            if ! check_directory "$nodul_dir"; then
                echo "Error: invalid Nodul directory"
                return 1
            fi
            ;;
        *)
            echo "Invalid choice"
            return 1
            ;;
    esac

    # Function to process a single directory
    process_directory() {
        local dir="$1"
        local type="$2"
        
        echo "Processing directory: $dir"
        
        if [ "$type" = "latenode" ] || [ "$type" = "all" ]; then
            echo "Renaming Latenode files..."
            run_with_spinner "Renaming in progress..." rename_latenode_files "$dir"
        fi
        
        if [ "$type" = "nodul" ] || [ "$type" = "all" ]; then
            echo "Renaming files by title..."
            run_with_spinner "Renaming in progress..." rename_by_title "$dir"
        fi
        
        echo "Removing empty files..."
        run_with_spinner "Removing in progress..." remove_empty_files "$dir"
        
        echo "Removing emojis..."
        run_with_spinner "Removing in progress..." remove_emojis "$dir"
    }

    # Process selected directories
    case $doc_type in
        "latenode")
            process_directory "$latenode_dir" "latenode"
            ;;
        "nodul")
            process_directory "$nodul_dir" "nodul"
            ;;
        "all")
            process_directory "$latenode_dir" "all"
            process_directory "$nodul_dir" "all"
            ;;
    esac

    echo "Processing completed!"
}

# Check command line arguments
if [ "$1" = "-all" ]; then
    process_all_docs
    exit 0
fi

# Main menu
show_menu() {
    echo "Latenode Documentation Utilities"
    echo "----------------------------------------"
    echo "1. Rename Latenode files (help.latenode.com_* -> category_page.md)"
    echo "2. Rename files by title (Nodul) (title -> filename.md)"
    echo "3. Remove empty files"
    echo "4. Remove emojis from files"
    echo "5. Exit"
    echo "----------------------------------------"
    echo -n "Select action (1-5): "
}

# Main program loop
while true; do
    show_menu
    read -r choice

    case $choice in
        1|2|3|4)
            dir=$(read_dir "Enter directory path: ")
            if ! check_directory "$dir"; then
                continue
            fi
            ;;
    esac

    case $choice in
        1)
            echo "Renaming Latenode files..."
            run_with_spinner "Renaming in progress..." rename_latenode_files "$dir"
            echo "Done!"
            ;;
        2)
            echo "Renaming files by title..."
            run_with_spinner "Renaming in progress..." rename_by_title "$dir"
            echo "Done!"
            ;;
        3)
            echo "Removing empty files..."
            run_with_spinner "Removing in progress..." remove_empty_files "$dir"
            echo "Done!"
            ;;
        4)
            echo "Removing emojis..."
            run_with_spinner "Removing in progress..." remove_emojis "$dir"
            echo "Done!"
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select 1-5."
            ;;
    esac

    echo
    echo "Press Enter to continue..."
    read -r
done 
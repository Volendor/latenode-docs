#!/usr/bin/env bash

# Script to rename files of the form:
# help.latenode.com_<category>_<id1>_<page-slug>_<id2>.md
# to:
# <category>_<page-slug>.md
#
# If a file contains only a category and two IDs (without page-slug),
# it will be renamed to:
# <category>.md

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

TARGET_DIR="$1"
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: '$TARGET_DIR' is not a directory"
  exit 1
fi

shopt -s nullglob

for file in "$TARGET_DIR"/*.md; do
  # Extract only the filename without the path and .md
  fname="${file##*/}"
  fname="${fname%.md}"

  # Split the name by the "_" character
  IFS='_' read -r -a parts <<< "$fname"

  # If the name has at least two elements: [0]=help.latenode.com, [1]=category
  if [ "${#parts[@]}" -ge 2 ]; then
    category="${parts[1]}"

    # If there are at least 5 parts: page-slug exists
    if [ "${#parts[@]}" -ge 5 ]; then
      page="${parts[3]}"
      newname="${category}_${page}.md"
    else
      # Otherwise: only category
      newname="${category}.md"
    fi

    # Full path for the new name
    newpath="$TARGET_DIR/$newname"

    if [ ! -e "$newpath" ]; then
      mv "$file" "$newpath"
    else
      echo "Skipping '$file' → '$newpath' (already exists)"
    fi
  else
    echo "Unrecognized filename structure: $file"
  fi
done

echo "Renaming completed."
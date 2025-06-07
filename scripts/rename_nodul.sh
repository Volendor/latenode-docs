#!/usr/bin/env bash

# Rename .md files based on their internal `title` (stripped of " | Nodul"), 
# preserving Unicode letters (e.g. Cyrillic) in filenames.
# Usage: ./rename_by_title.sh <directory>

set -e

if [ $# -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

TARGET_DIR="$1"
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: '$TARGET_DIR' is not a directory"
  exit 1
fi

# Ensure we treat Unicode properly
export LC_CTYPE=en_US.UTF-8

shopt -s nullglob

for file in "$TARGET_DIR"/*.md; do
  [ -f "$file" ] || continue

  # 1. extract the title from the front matter
  title=$(grep -m1 '^title:' "$file" | sed -E 's/^title:[[:space:]]*"(.+)"$/\1/')
  # 2. strip the suffix " | Nodul"
  title=${title%" | Nodul"}

  # 3. sanitize: replace whitespace with underscore, remove any char
  #    that is not a Unicode letter (\p{L}), number (\p{N}), dot, dash or underscore
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
      echo "Skipping '$file' → '$newpath' (target exists)"
    fi
  fi
done

echo "Done: files renamed based on their titles."

#!/usr/bin/env bash

# Remove all emojis from Markdown files in a directory to improve LLM parsing.
# Usage: ./remove_emojis.sh <directory>
# Strips any Unicode emoji from each .md file using Perl.

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
  [ -f "$file" ] || continue
  perl -CSD -i -pe 's/\p{Emoji}//g' "$file"
done

echo "Done: all emojis have been removed from all .md files in '$TARGET_DIR'."
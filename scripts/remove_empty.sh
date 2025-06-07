#!/usr/bin/env bash

# Usage: ./cleanup_empty.sh <directory>
# Deletes .md files that contain only front-matter (---, url:…, title:…)
# and blank lines — nothing else.

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

DIR="$1"
if [ ! -d "$DIR" ]; then
  echo "Error: '$DIR' is not a directory"
  exit 1
fi

shopt -s nullglob

for f in "$DIR"/*.md; do
  # Remove any lines that are:
  #   - the front-matter separators (---)
  #   - url:… or title:… lines (with any content after the colon)
  #   - blank lines
  # If nothing remains, delete the file
  if ! grep -vE '^(---\s*$|url:.*|title:.*|\s*)$' "$f" | grep -q .; then
    echo "Deleting empty file: $f"
    rm "$f"
  fi
done

echo "Cleanup done."

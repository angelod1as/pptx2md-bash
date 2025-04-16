#!/bin/bash

# Check if the filename is provided
if [ -z "$1" ]; then
  echo "Usage: sh main.sh filename.pptx"
  exit 1
fi

# Extract the filename from the first argument
FILENAME="$1"

# Check if the assets directory exists, if not, create it
if [ ! -d "assets" ]; then
  mkdir assets
  echo "Created 'assets' directory."
fi

# Run the pptx2md command with the specified options
pptx2md "$FILENAME" -o output.md -i assets --disable-escaping --disable-notes

echo "Conversion complete. Output saved to output.md"

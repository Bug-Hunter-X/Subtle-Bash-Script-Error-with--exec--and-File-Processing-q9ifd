#!/bin/bash

# Improved script with error handling

file_to_process="my_file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found." >&2
  exit 1
fi

# Process the file using a more robust approach
cat "$file_to_process"

echo "Processing complete"

# Alternative solution using exec with proper error handling:
exec < "$file_to_process" cat || { echo "Error processing file" >&2; exit 1; }


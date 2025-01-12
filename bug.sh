#!/bin/bash

# This script attempts to process a file, but it has a subtle error related to how it handles file descriptors.

file_to_process="my_file.txt"

# Attempt to process the file
exec < "$file_to_process" cat

echo "Processing complete"

# The issue is that the 'exec' command replaces the current shell process,
# meaning that the 'echo' statement will not be executed if the file
# does't exist or cannot be opened.

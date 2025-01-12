# Shell Script Bug: Exec and File Handling

This repository demonstrates a subtle bug in a bash script that involves the use of the `exec` command for file processing.  The script attempts to process a file using `exec < "$file_to_process" cat`, but fails to handle cases where the file might not exist or is inaccessible. This leads to the script exiting prematurely without any error message.

The bug is explained in detail in `bug.sh` and a solution is provided in `bugSolution.sh`.

This example highlights the importance of robust error handling when working with file operations in shell scripts.
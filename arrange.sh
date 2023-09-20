#!/bin/bash

# Check if a directory named 'files' exists.
if [ ! -d "files" ]; then
    echo "Error : 'files' directory is not found."
    exit 1
fi

# Move .txt files to Each folders(directories).
for txt_file in files/*.txt; do
    if [ -f "$txt_file" ]; then
        first_letter=$(basename "$txt_file" | cut -c1)

        # Check if there is each alphabet folder(directory).
        # If not, create one.
        if [ ! -d "$first_letter" ]; then
            mkdir "$first_letter"
        fi

        # Move a file into its folder!
        mv "$txt_file" "$first_letter/"
    fi
done


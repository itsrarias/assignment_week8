#!/bin/bash

# move files to corresponding folders
for file in files/*; do
    first_letter=$(basename "$file" | cut -c1)
    if [[ -f "$file" && -n "$first_letter" && "$first_letter" =~ [[:alpha:]] ]]; then
        mv "$file" "${first_letter,,}/"
    fi
done

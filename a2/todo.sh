#!/bin/bash

# Function to show usage
usage() {
    echo "Usage: batchrename -d <directory> -p <prefix> -s <suffix>"
    echo "Example: batchrename -d myfolder -p new_ -s _old"
    exit 1
}

# Parse command-line arguments
while getopts "d:p:s:" opt; do
    case $opt in
        d) directory=$OPTARG ;;
        p) prefix=$OPTARG ;;
        s) suffix=$OPTARG ;;
        *) usage ;;
    esac
done

# Validate input
if [[ -z "$directory" ]]; then
    echo "Error: Directory not specified."
    usage
fi

if [[ ! -d "$directory" ]]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Rename files
for file in "$directory"/*; do
    if [[ -f "$file" ]]; then
        filename=$(basename -- "$file")
        extension="${filename##*.}"
        name="${filename%.*}"
        newname="${prefix}${name}${suffix}.${extension}"
        mv "$file" "$directory/$newname"
        echo "Renamed: $filename -> $newname"
    fi
done

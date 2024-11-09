#!/bin/bash

# Get the first input labeled as "command"
input1=$(echo "" | dmenu -p "Title:")
# Get the second input labeled as "title"
input2=$(echo "" | dmenu -p "Command:")

# Check if both inputs are provided
if [[ -z "$input1" || -z "$input2" ]]; then
    echo "Both command and title must be provided."
    exit 1
fi

# Define the target file
target_file="$HOME/.local/share/Scripts/dmenu_search.sh"

# Insert the new line at line 5
sed -i "5i \    [\"$input1\"]=\"$input2\"" "$target_file"

echo "Inserted: [\"$input1\"]=\"$input2\" into $target_file"

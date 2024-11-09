#!/bin/bash

# Get command input from dmenu
command=$(echo "" | dmenu -p "Enter command:")

# Check if the user provided a command
if [ -n "$command" ]; then
    # Execute the command
    eval "$command"
else
    echo "No command entered."
fi

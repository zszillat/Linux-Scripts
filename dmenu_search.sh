#!/bin/bash

# Define an associative array with software titles and their commands
declare -A software=(
    ["Google Chrome"]="google-chrome-stable"
    ["Task Manager"]="xfce4-taskmanager"
    ["Calibre"]="calibre"
    ["VirtualBox"]="virtualbox"
    ["TesTitle"]="firefox"
    ["Discord"]="discord"
    ["Steam"]="steam"
    ["Visual Studio Code"]="code"
    ["Calculator"]="galculator"
    ["Notepad"]="mousepad"
    ["Settings"]="xfce4-settings-manager"
)

# Generate a list of software titles for dmenu
choices=$(printf "%s\n" "${!software[@]}")

# Use dmenu to select a software title
selected=$(echo "$choices" | dmenu -i)

# Run the corresponding command if a selection was made
if [ -n "$selected" ] && [ -n "${software[$selected]}" ]; then
    ${software[$selected]} &
else
    echo "No valid selection."
fi
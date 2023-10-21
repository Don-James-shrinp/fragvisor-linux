#!/bin/bash

# Function to search for the implementation of a given function
search_function() {
    local function_name="$1"
    local current_dir=$(pwd)

    # Use the 'grep' command to search for the function in source files
    grep -r --include="*.c" --include="*.cpp" --include="*.h" "$function_name" "$current_dir"
}

# Check if a function name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Please provide the name of the function to search for."
else
    function_name="$1"
    search_function "$function_name"
fi

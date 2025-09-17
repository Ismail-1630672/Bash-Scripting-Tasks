#!/bin/bash

# File Operations - Write a script that creates a directory, navigates into it, creates a file inside it, writes some text to the file, and then displays the contents of the file. 

file_operations() {

    local new_directory="$1"
    mkdir -p $new_directory
    echo "created new directory"
    cd $new_directory
    echo "navigated into new directory"

    touch "new_file.txt"
    echo "created new file inside $new_directory"
    echo "My name is Ismail Osman and I live in London" > "new_file.txt"
    echo "Something has been written to the new file"

    echo "Displaying contents of the file"
    cat "new_file.txt"
}

file_operations "new_directory"
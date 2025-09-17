#!/bin/bash

# Conditional Statements - Write a script that checks if a file exists and prints a message indicating whether it exists or not. If it exists, the script should also check if the file is readable, writable, or executable. 

check_file() {

    local input_file="$1"

    echo "Checking if $input_file exists......"
    if [ -f $input_file ]
    then
        echo "The file $input_file exists"
        if [[ -r $input_file ]]
        then
            echo "The file is readable"
        else
            echo "The file is not readable"
        fi

        if [[ -w $input_file ]]
        then
            echo "The file is writeable"
        else
            echo "The file is not writeable"
        fi

        if [[ -x $input_file ]]
        then
            echo "The file is executable"
        else
            echo "The file is not executable"
        fi

    else
        echo "The input file does not exist"
    fi 


}

check_file "hello.txt"
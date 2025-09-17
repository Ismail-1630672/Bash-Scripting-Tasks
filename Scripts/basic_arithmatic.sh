#!/bin/bash

#Write a script that takes two numbers as input from the user and performs basic arithmetic operations (addition, subtraction, multiplication, and division) and then displays all the answers of those operations in the terminal. 

echo "Input your first number"
read -r first_number

echo "Input your second number"
read -r second_number

echo "These are the following operations you can perform"
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"

echo "choose an operation between 1 to 4"
read -r option

case $option in
    1)
        addition_result=$((first_number+second_number))
        echo "The result is $addition_result" ;;

    2)
        subtraction_result=$((first_number-second_number))
        echo "The result is $subtraction_result" ;;

    3)
        multiplication_result=$((first_number*second_number))
        echo "The result is $multiplication_result" ;;

    4)
        if [ $second_number -eq 0 ]
        then
            echo "cannot divide by 0"
            exit 1
        else
            division_result=$((first_number/second_number))
            echo "The result is $division_result" 
        fi ;;

    *)
        echo "Invalid option" ;;
esac 


#!/bin/bash
# Ask for the age of the user and retrieve what will happen to the user
# in +5 years
echo Hello, what is your age?
read age
echo "When you will be" $((age + 5)) "you will be a Data Scientist with a high tenure" > 006.out

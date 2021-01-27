echo hello world
#!/bin/bash

# Script Name:                  helloworld.sh 
# Class Name:                   Ops 201
# Author Name:                  Emilio Muniz
# Date of latest revision:      1/26/2021
# Purpose:                      Class 02 Challenge 

# What is a variable?

# Declaration
my_variable=$(lspci)

# Call
echo $my_variable >>output.txt

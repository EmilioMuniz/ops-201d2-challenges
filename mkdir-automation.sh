#!/bin/bash

# Script:                   ops-201d2-challenge-class04                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  1/28/2021    
# Purpose:                  Create a script for automation.

# Declaration of variables

directory="newbie.txt"

# Declaration of array

make_directory=("dir1" "dir2" "dir3" "dir4")

# Declaration of functions

#Main
mkdir ${make_directory[*]}
cd dir1
touch $directory
cd ..
cd dir2
touch $directory
cd ..
cd dir3
touch $directory
cd ..
cd dir4
touch $directory
cd ..
# resources: https://linuxhandbook.com/bash-arrays/ 
#End

#!/bin/bash

# Script:                   ops-201d2-challenge-class13                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/10/2021    
# Purpose:                  Bash script for whois cmd.

# Declaration of variables
var_a=domain_name

# Declaration of functions
domain_info(){
    whois $var_a
    dig $var_a
    host $var_a
    nslookup $var_a
}
#Main
echo "Please enter domain name:"
read var_a
domain_info > "DNI.txt"
libreoffice --cat DNI.txt

#Resources:https://askubuntu.com/questions/659741/how-to-open-a-file-with-libreoffice-writer-from-terminal 
#https://canvas.instructure.com/courses/2498321/assignments/20352742?module_item_id=42421251

#End 

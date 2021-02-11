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

#Resources: 

#End 

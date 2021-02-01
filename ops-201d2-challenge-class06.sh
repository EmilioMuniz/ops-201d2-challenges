#!/bin/bash

# Script:                   ops-201d2-challenge-class06                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/01/2021    
# Purpose:                  Show listening ports.

# Declaration of variables
var_a=ip_address

# Declaration of array


# Declaration of functions
open_ports() { 
      nc -z -v $var_a 01-1023 2>&1 | grep succeeded 
      }  


#Main
arp -a
echo -e "\nPlease enter ip address:"
read var_a
open_ports
echo 'All Done'
# resources: https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php

#End
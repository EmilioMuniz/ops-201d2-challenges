#!/bin/bash

# Script:                   ops-201d2-challenge-class07                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/02/2021    
# Purpose:                  Utilize lshw, grep.

# Declaration of variables


# Declaration of functions


#Main
echo Name of Computer:
hostname
echo CPU:
sudo lshw -sanitize | grep -A 6 "computer"
echo RAM:
sudo lshw -sanitize | grep -A 3 "*-memory"
echo Display Adapter:
sudo lshw -sanitize | grep -A 11 "*-display"
echo Network Adapter:
sudo lshw -sanitize | grep -A 15 "*-network"

#References: https://careerkarma.com/blog/linux-grep-command/

#End

# Script:                   ops-201d2-challenge-class12                     
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/09/2021   
# Purpose:                  Powershell IP Analysis.

#Declaration of variables
$netrepo = ipconfig /all

#Declaration of functions
Function Do-Report {

  $netrepo


}
#Main
Do-Report > "network_report.txt"

Select-String -Path C:\Users\Milo76\Desktop\network_report.txt -Pattern IPv4

rm ".\network_report.txt"

ping 127.0.0.1

ping google.com

#References:https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.1 

#End

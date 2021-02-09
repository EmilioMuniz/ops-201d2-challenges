# Script:                   ops-201d2-challenge-class09.ps1                       
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/08/2021    
# Purpose:                  Use Powershell to fetch Event Logs.

#Declaration of variables

#Declaration of functions

#Main
$Begin = Get-Date -Date '2/03/2021 13:00:00'
$End = Get-Date -Date '2/04/2021 13:00:00'
Get-EventLog -LogName System -After $Begin -Before $End > "last_24.txt"

Get-EventLog -LogName System -EntryType Error > "error.txt"

Get-EventLog -LogName System -InstanceId 16

Get-EventLog -LogName System -Newest 20

$Events = Get-EventLog -LogName System -Newest 500
$Events | Group-Object -Property Source -NoElement | Format-Table -AutoSize

#Resources: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-eventlog?view=powershell-5.1


#End

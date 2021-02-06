# Script:                   ops-201d2-challenge-class10                     
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/05/2021   
# Purpose:                  System Process Commands.

#Declaration of variables

#Declaration of functions

#Main
#All active processes ordered by highest CPU time consumption:

Get-Process | Sort-Object -Property CPU -Descending

#All active processes ordered by highest Process Identification Number:

Get-Process | Sort-Object -Property Id -Descending

#Top five active processes ordered by highest Working Set (WS(K)):

Get-Process | Sort-Object -Property WorkingSet -Descending | select -First 5

#Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

[system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")

# For loop to open Internet Explorer:

for ($i=1; $i -le 10; $i++)
{
    [system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")
}

#Close all Internet Explorer windows:

Stop-Process -Name iexplore

#Kill Process by ID Number

Stop-Process -Id 4904

#References:https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1

#End

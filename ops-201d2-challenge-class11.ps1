# Script:                   ops-201d2-challenge-class11                     
# Author:                   Emilio Muniz                       
# Date of latest revision:  2/08/2021   
# Purpose:                  Powershell one-liners.

#Declaration of variables

#Declaration of functions

#Main

#Enable File and Printer Sharing

Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

#Enable ICMP

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

#Remote Manager

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

#Remove Bloatware

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

#Enable Hyper-V

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Toggle SMBv1

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

#References: https://github.com/superswan/Powershell-SysAdmin

#End

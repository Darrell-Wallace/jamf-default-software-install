#!/bin/bash -v

# This script manually executes policies by id numbers or custom triggers

CheckBinary (){

# Identify location of jamf binary.

jamf_binary=`/usr/bin/which jamf`

 if [[ "$jamf_binary" == "" ]] && [[ -x "/usr/sbin/jamf" ]] && [[ ! -x "/usr/local/bin/jamf" ]]; then
    jamf_binary="/usr/sbin/jamf"
 elif [[ "$jamf_binary" == "" ]] && [[ ! -x "/usr/sbin/jamf" ]] && [[ -x "/usr/local/bin/jamf" ]]; then
    jamf_binary="/usr/local/bin/jamf"
 elif [[ "$jamf_binary" == "" ]] && [[ -x "/usr/sbin/jamf" ]] && [[ -x "/usr/local/bin/jamf" ]]; then
    jamf_binary="/usr/local/bin/jamf"
 fi
}

# Run the CheckBinary function to identify the location
# of the jamf binary for the jamf_binary variable.

CheckBinary

# Install software
# $jamf_binary policy -id [policy id number] or -trigger [trigger] for each

#Install Rosetta
$jamf_binary policy -id 100
sleep 1
#Jamf Connect Menu Bar App Launch Agent
$jamf_binary policy -id 96
sleep 1
#Install ArcticWolf Agent
$jamf_binary policy -id 142
sleep 1
#Install Cisco Secure Client 5.0.05040
$jamf_binary policy -id 190
sleep 1
#Install n-Able Agent
$jamf_binary policy -id 68
sleep 1
#Install Office365
$jamf_binary policy -id 111
sleep 1
#New Teams
$jamf_binary policy -id 174
sleep 1
#Google Chrome
$jamf_binary policy -id 73
sleep 1
#Install VAl branding
$jamf_binary policy -id 7
sleep 1
#Install Poster Printer
$jamf_binary policy -id 29
sleep 1
#Dock Items
$jamf_binary policy -id 43
sleep 1
#LAPS - Initial Password
$jamf_binary policy -id 172
sleep 1
#Set Computer Name
$jamf_binary policy -id 14
sleep 1
#Location Services and Time Zone
$jamf_binary policy -id 132

exit 0

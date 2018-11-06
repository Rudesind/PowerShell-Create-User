Param (
    [string]$user
)

#-----------------------------------#
# Script : Create_Local_User.ps1
# Updated: 09/27/2018
# Author : Configuration Management
# Version: 1.0
# Documentation: Create_Local_User.md
#
# Summary:
# This script creates a local user
# on a local computer with a
# provided username and password.
#-----------------------------------#

#--------------------#
# Script Information #
#--------------------#

New-Variable SCRIPT -option Constant -value "Create_Local_User.ps1"
New-Variable AUTHOR -option Constant -value "Configuration Management"
New-Variable UPDATED -option Constant -value "09/27/2018"
New-Variable VERSION -option Constant -value "1.0"

#-------------#
# Error Codes #
#-------------#

New-Variable INITIALIZATION_FAILED -option Constant -value 4000
New-Variable LOG_LOAD_FAILED -option Constant -value 4001
New-Variable FAILED_TO_EXIT -option Constant -value 4006

#--------------#
# Log Function #
#--------------#

# Idea taken from:
# https://stackoverflow.com/questions/7834656/create-log-file-in-powershell
# The below function is used to write to a log file
Function LogWrite
{
    # $logSting is the string written to the file
    #
    Param ([string]$logString)

    # The current time stamp for the log entry. Updated with every write
    #
    $time = Get-Date -Format g

    # Write the contents to a log file at the specified location
    #
    Add-content $logFile -value "[$time]:`t$logString" -ErrorAction Stop

}

#-------------#
# Create User #
#-------------#

# The below function creates a local user account with no password
Function CreateUser
{
    Param ([string]$user)

    New-Local

}

#----------------------#
# Initialize Variables #
#----------------------#

try {

    # Friendly error message
    #
    $errorMsg = ""

    # Time stamp is in ISO 8601 standard
    #
    $timestamp = Get-Date -format "yyyyMMddTHHmmss"

    # Log file directory
    #
    $logdir = "C:\"

    # Log file path
    #
    $logFile = $logdir + "\Ivanti_POSReady7_Anonymize_$timestamp.txt"

} catch {
    $errorMsg = "Error, could not Initialize script: " + $Error[0]
    exit $INITIALIZATION_FAILED
}

#---------------------#
# Initialize Log file #
#---------------------#

try {

    LogWrite "---"
    LogWrite $SCRIPT
    LogWrite $UPDATED
    LogWrite $AUTHOR
    LogWrite $VERSION
    LogWrite "---"

} catch {
    $errorMsg = "Error, could not load log file: " + $Error[0]
    exit $LOG_LOAD_FAILED
}

#----------------------#
# #
#----------------------#

try {


} catch {
    $errorMsg = "Error, : " + $Error[0]
    LogWrite $errorMsg
    LogWrite "Exiting with error code: $FAILED_TO_STOP"
    exit $FAILED_TO_STOP
}

#------#
# Exit #
#------#

try {

    # Exit
    $code = "0"
    LogWrite "Exiting script with error code: $code"

} catch {
    $errorMsg = "Error, code not exit: " + $Error[0]
    LogWrite $errorMsg
    LogWrite "Exiting with error code: $FAILED_TO_EXIT"
    exit $FAILED_TO_EXIT
}

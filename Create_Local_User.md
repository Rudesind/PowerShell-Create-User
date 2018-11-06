# Ivanti POSReady 7 Anonymize
---
Script: Ivanti_POSReady7_Anonymize.ps1
Updated: 9/18/2018
Author: Configuration Management
Version: 1.0

This script will anonymize remote devices taken from a basic text list as an argument.


### Usage:
```
Ivanti_POSReady7_Anonymize.ps1 text_file
```

### Error Codes:
INITIALIZATION_FAILED (4000): Failed to load script variables.
LOG_LOAD_FAILED (4001): Failed to load the log file.
FAILED_TO_STOP (4003): Failed to stop the Ivanti services.
FAILED_TO_DELETE_REG (4005): Failed to delete the Ivanti reg key\values.
FAILED_TO_DELETE_DIR (4006): Failed to delete the LANDESK directory.
FAILED_OSPROHELPER (4007): Failed to stop the OSProHelper service.
FAILED_TO_EXIT (4004): Failed to exit properly.


### References:
[PowerShell Code Tab](https://stackoverflow.com/questions/20691068/how-do-i-type-a-tab-character-in-powershell)
[Exiting Functions](https://social.technet.microsoft.com/Forums/windows/en-US/356df869-2251-4cfc-b4f5-59627af18360/powershell-exit-code-from-function?forum=winserverpowershell)
[Get-Service](https://learn-powershell.net/2012/01/15/startingstopping-and-restarting-remote-services-with-powershell/)
[Start-Sleep](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/start-sleep?view=powershell-6)
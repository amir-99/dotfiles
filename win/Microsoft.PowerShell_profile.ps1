# Amir Eghtedar
#
# amir99.en@gmail.com
#
# https:\\github.com\amir-99
#
# Powershell Profile






# List:
#     PART A: Used directories
#     PART B: Custom Functions
#     PART C: VMWare VMRun
#     PART D: Custom aliases
#     PART E: Theme
#     PART F: power readline






# *****

# PART A:
#       Used directories

$git_bin_dir = 'C:\Program Files\Git\usr\bin'
$vmware_install_dir = 'L:\Program Files (x86)\VMware\VMware Workstation\'
$vms_dir = 'L:\Amir\VMs'
$nvcon = 'C:\Users\Amir\AppData\Local\nvim'
$VENVS_DIR = 'L:\Amir\Pyhton\venvs'

# *****

# PART B:
#       Custom Functions

# Start Windows Terminal as Administrator
function wta {
    Start-Process -Verb RunAs wt
}

# unix listing
function la($dir) {
    & "$git_bin_dir\ls.exe" -lah --color=auto --group-directories-first "$dir"
}
function ll($dir) {
    & "$git_bin_dir\ls.exe" -lh --color=auto --group-directories-first "$dir"
}
function l($dir) {
    & "$git_bin_dir\ls.exe" --color=auto --group-directories-first "$dir"
}

# start git kraken
function gkr{
    & C:\Users\Amir\AppData\Local\gitkraken\Update.exe --processStart "gitkraken.exe"
}

# activate venvs
function act($env_name){
    & "$VENVS_DIR\$env_name\Scripts\Activate.ps1"
}

# *****

# PART C:
#       VMWare VMRun

# Start, Stop or Reset a VM.

#  Soft Reset and Stop
function svm($command, $vmName) {
   if ("start" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws start "$vms_dir\$vmName\$vmName.vmx" nogui
   }elseif ("stop" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws stop "$vms_dir\$vmName\$vmName.vmx"  soft
   }elseif ("reset" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws reset "$vms_dir\$vmName\$vmName.vmx"  soft
   }elseif ("pause" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws pause "$vms_dir\$vmName\$vmName.vmx"
   }elseif ("resume" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws unpause "$vms_dir\$vmName\$vmName.vmx"
   }else{
       throw "command not recognized!"
   }
}

# force Stop or Reset VMs
function fvm($command, $vmname){
    if ("reset" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws reset "$vms_dir\$vmName\$vmName.vmx" hard
    }elseif ("stop" -ieq $command){
        & "$vmware_install_dir\vmrun.exe" -T ws stop "$vms_dir\$vmName\$vmName.vmx"  hard
    }else{
       throw "command not recognized!"
   }
}

# list running VMs
function lvm{
    & "$vmware_install_dir\vmrun.exe" -T ws list
}

# *****

# PART D:
#       Custom aliases

# neovim
Set-Alias -Name v -value nvim
# Chrome
Set-Alias -Name chr -value "C:\Program Files\Google\Chrome\Application\chrome.exe"
# windows
Set-Alias -Name xp -value explorer
Set-Alias -Name ctl -value control
# Git Apps Aliases
#   Need to install Git
#   Touch
Set-Alias -Name touch -Value "$git_bin_dir\touch.exe"
#   rm
Set-Alias -Name rml -Value "$git_bin_dir\ls.exe"

# *****

# PART E:
#       Theme

# Windows Terminal Propmpt
#   Need to install posh-git and oh-my-posh
# Import-Module posh-git
    oh-my-posh --init --shell pwsh --config ~/Documents/WindowsPowerShell/Modules/oh-my-posh/themes/tonybaloney.omp.json | Invoke-Expression

# *****

# PART F:
#       PSReadLine

# inline autosuggestion
#   Need to install PSReadLine > 2.0.1
Import-Module PSReadLine
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadLineOption -HistorySearchCursorMovesToEnd
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadLineOption -ShowToolTips
    Set-PSReadLineOption -PredictionSource History
    Set-PSReadLineOption -Colors @{
        Command            = 'Yellow'
        Number             = 'Blue'
        Member             = 'Red'
        Operator           = 'DarkMagenta'
        Type               = 'DarkCyan'
        Variable           = 'Green'
        Parameter          = 'DarkGreen'
        ContinuationPrompt = 'DarkGray'
    }

# Disabled for faster load time.
# Terminal-Icons
#   Need to install Terminal-Icons
#Import-Module -Name Terminal-Icons

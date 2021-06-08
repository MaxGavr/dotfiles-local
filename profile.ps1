# run "PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force" to install posh-git
# run "PowerShellGet\Update-Module posh-git" to update it
Import-Module posh-git

# tiny alias for git
Set-Alias -Name g -Value git

# set UTF-8 encoding
$OutputEncoding = [Text.UTF8Encoding]::UTF8
[Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8

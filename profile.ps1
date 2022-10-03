# tiny alias for git
Set-Alias -Name g -Value git

# run "PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force" to install posh-git
# run "PowerShellGet\Update-Module posh-git" to update it
Import-Module posh-git

# set UTF-8 encoding
$OutputEncoding = [Text.UTF8Encoding]::UTF8
[Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8

# PowerShell parameter completion shim for the dotnet CLI
# https://learn.microsoft.com/en-us/dotnet/core/tools/enable-tab-autocomplete
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)
        dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}

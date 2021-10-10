# src: https://serverfault.com/a/29261
# install to $pshome/profile.ps1 (eg: C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1)

$currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() )
& {
    if ($currentPrincipal.IsInRole( [Security.Principal.WindowsBuiltInRole]::Administrator ))
    {
        (get-host).UI.RawUI.Backgroundcolor="DarkRed"
        clear-host
        write-host "Warning: PowerShell is running as an Administrator.`n"
    }

    $utilities = $null
    if( [IntPtr]::size * 8 -eq 64 )
    {
        $host.UI.RawUI.WindowTitle = "Windows PowerShell (x64)" 
        $utilities = "${env:programfiles(x86)}\Utilities"
    }
    else
    {
        $host.UI.RawUI.WindowTitle = "Windows PowerShell (x86)"
        $utilities = "${env:programfiles}\Utilities"
    }
    if( (Test-Path $utilities) -and !($env:path -match $utilities.Replace("\","\\")) )
    {
        $env:path = "$utilities;${env:path}"
    }

    
}

function Prompt
{
    if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
    {
        if( !$host.UI.RawUI.WindowTitle.StartsWith( "Administrator: " ) )
        { $Host.UI.RawUI.WindowTitle = "Administrator: " + $host.UI.RawUI.WindowTitle }
    }
    'PS' + $(if ($nestedpromptlevel -ge 1) { '>>' }) + '> '
}

if ($currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
    $ConfirmPreference = "medium"

}
Function Invoke-LITULeftAlignTaskbar {
    <#

    .SYNOPSIS
        Enables/Disables Left Taskbar Align

    .PARAMETER LeftAlignEnabled
        Indicates the current taskbar state.

    #>
    Param($LeftAlignEnabled)
    Try{
        if ($LeftAlignEnabled -eq $true){
            Write-Host "Aligning Taskbar to the Left"
            $LeftAlignValue = 0
        }
        else {
            Write-Host "Centering Taskbar"
            $LeftAlignValue = 1
        }
        $Path = "HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced"
        Set-ItemProperty -Path $Path -Name TaskbarAl -Value $LeftAlignValue
    }
    Catch [System.Security.SecurityException] {
        Write-Warning "Unable to set $Path\$Name to $Value due to a Security Exception"
    }
    Catch [System.Management.Automation.ItemNotFoundException] {
        Write-Warning $psitem.Exception.ErrorRecord
    }
    Catch{
        Write-Warning "Unable to set $Name due to unhandled exception"
        Write-Warning $psitem.Exception.StackTrace
    }
}
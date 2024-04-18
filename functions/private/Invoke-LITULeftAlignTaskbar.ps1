Function Invoke-LITULeftAlignTaskbar {
    <#

    .SYNOPSIS
        Enables/Disables Left Taskbar Align

    .PARAMETER LeftAlignEnabled
        Indicates the current taskbar state.

    #>
    Param($LeftAlignEnabled)
    Try{
        if ($LeftAlignEnabled -eq $false){
            Write-Host "Aligning Taskbar to the Left"
            New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Force -Value 0 -PropertyType DWORD
            
        }
        else {
            Write-Host "Centering Taskbar"
            Remove-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Force
        }
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
Function Install-WinUtilProgramWinget {

    <#

    .SYNOPSIS
        Manages the provided programs using Winget

    .PARAMETER ProgramsToInstall
        A list of programs to manage

    .PARAMETER manage
        The action to perform on the programs, can be either 'Installing' or 'Uninstalling'

    .NOTES
        The triple quotes are required any time you need a " in a normal script block.

    #>

    param(
        $ProgramsToInstall,
        $manage = "Installing",
        $NoMachineScope = "9MVPHLK2M732S,Upscayl.Upscayl"
    )

    $x = 0
    $programsArray = $ProgramsToInstall -split ","
    $count = $programsArray.Count
    $noMachineScopeArray = $NoMachineScope -split ","

    Write-Progress -Activity "$manage Applications" -Status "Starting" -PercentComplete 0

    Foreach ($Program in $($ProgramsToInstall -split ",")){

        $programTrimmed = $Program.Trim()
        $scopeOption = "--scope=machine"
        if ($noMachineScopeArray -contains $programTrimmed) {
            $scopeOption = ""
        }

        Write-Progress -Activity "$manage Applications" -Status "$manage $programTrimmed $($x + 1) of $count" -PercentComplete $($x/$count*100)
        if($manage -eq "Installing"){
            Start-Process -FilePath winget -ArgumentList "install -e --accept-source-agreements --accept-package-agreements $scopeOption --silent $programTrimmed" -NoNewWindow -Wait
        }
        if($manage -eq "Uninstalling"){
            Start-Process -FilePath winget -ArgumentList "uninstall -e --purge --force --silent $programTrimmed" -NoNewWindow -Wait
        }

        $X++
    }

    Write-Progress -Activity "$manage Applications" -Status "Finished" -Completed

}
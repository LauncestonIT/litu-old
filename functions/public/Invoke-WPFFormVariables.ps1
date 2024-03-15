Function Invoke-WPFFormVariables {
    <#

    .SYNOPSIS
        Prints the logo

    #>
    #If ($global:ReadmeDisplay -ne $true) { Write-Host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow; $global:ReadmeDisplay = $true }


    Write-Host ""
    Write-Host "   ,--,                     ,----,                "
    Write-Host ",---.'|                   ,/   .`|                "
    Write-Host "|   | :       ,---,     ,`   .'  :                "
    Write-Host ":   : |    ,`--.' |   ;    ;     /          ,--,  "
    Write-Host "|   ' :    |   :  : .'___,/    ,'         ,'_ /|  "
    Write-Host ";   ; '    :   |  ' |    :     |     .--. |  | :  "
    Write-Host "'   | |__  |   :  | ;    |.';  ;   ,'_ /| :  . |  "
    Write-Host "|   | :.'| '   '  ; `----'  |  |   |  ' | |  . .  "
    Write-Host "'   :    ; |   |  |     '   :  ;   |  | ' |  | |  "
    Write-Host "|   |  ./  '   :  ;     |   |  '   :  | | :  ' ;  "
    Write-Host ";   : ;    |   |  '     '   :  |   |  ; ' |  | '  "
    Write-Host "|   ,/     '   :  |     ;   |.'    :  | : ;  ; |  "
    Write-Host "'---'      ;   |.'      '---'      '  :  `--'   \ "
    Write-Host "           '---'                   :  ,      .-./ "
    Write-Host "                                    `--`----'     "
    Write-Host ""
    Write-Host "====Launceston IT====="
    Write-Host "=====Windows Utility====="

    #====DEBUG GUI Elements====

    #Write-Host "Found the following interactable elements from our form" -ForegroundColor Cyan
    #get-variable WPF*
}
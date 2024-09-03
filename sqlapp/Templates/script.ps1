param (
    [Parameter(Mandatory=$true)][string]$ARMValues
)

Write-Host "Starting the script"

$outputs = $ARMValues | convertfrom-json

foreach ($output in $outputs) {
$value1=$output.'webappname'.value
$value2=$output.'sqlserverfqdn'.value

Write-Host $value1
Write-Host $value2

Write-Host "##vso[task.setvariable variable=webappname;]$value1"
Write-Host "##vso[task.setvariable variable=sqlserverfqdn;]$value2"
}



  



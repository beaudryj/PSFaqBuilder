function New-FaqFolder{
[cmdletBinding()]
Param(
    [String]$FaqFolderPath
)    

$FaqFolder = Test-Path -Path $FaqFolderPath

if (!$FaqFolder)
{
    New-Item -ItemType Directory $FaqFolderPath
}
else {
    Write-Output "Faq Directory Already exists in $FaqFolderPath"
}

}

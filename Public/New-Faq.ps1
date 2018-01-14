function New-Faq{
[cmdletBinding()]
Param(
    [string]$Faq, 
    [string]$Title,
    [string]$FaqFolderPath
)    



$Markdown = Test-Path -Path "$FaqFolderPath\$Faq"
$FaqFolder = Test-Path -Path $FaqFolderPath

if (!$FaqFolder){
    New-FaqFolder -FaqFolderPath $FaqFolderPath
}else {
    Write-Output "FaqFolder Already Exists "
}

if (!$Markdown)
{   
    $MDPath = (New-Item -Path $FaqFolderPath\$Faq.md -ItemType File).FullName
}
else {
    Write-Output "$Faq Already exists in $FaqFolderPaths"
}

New-FaqHeader -markdown $MDPAth -title  "$Title" -headertype "H1"


}

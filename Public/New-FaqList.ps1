function New-FaqList{
[cmdletBinding()]
Param(
    [String] $Markdown,
    [String[]] $ListItems,
    [ValidateSet("UnOrdered","Ordered")]
    [String] $ListType
)

    $Num = 0
    $List = $null

    Foreach ($Item in $ListItems)
    {
        if($ListType -eq "Ordered")
        {
            $Num = $Num + 1
            $List = "$List `n $Num. $Item"
        }elseif($ListType -eq "UnOrdered") {
            $List = "$List `n * $Item"
        }
    }

    Add-Content -Path $Markdown -Value ("$List")
}


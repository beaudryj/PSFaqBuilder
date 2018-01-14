function New-FaqHeader{
[cmdletBinding()]
Param(
    [String] $Title,
    [String] $Markdown,
    [String] $HeaderType
)

    Switch($HeaderType){
        H1 {
            $Header = "#"
        }
        H2 {
            $Header = "##"
        }
        H3 {
            $Header = "###"
        }
        Default {
            $Header = $null
        }
    }
    Add-Content -Path $Markdown -Value ("$Header $Title")
}
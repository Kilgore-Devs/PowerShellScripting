# parameters
param([string]$dir2 = "C:\")

# functions
function Get-dirInfo($dir)
{
    $results = Get-ChildItem $dir -Recurse -ErrorAction SilentlyContinue | Measure-Object -Property length -Sum
    return [math]::round(($results).sum/1GB,3)
}

# main processing
Get-dirInfo $dir2
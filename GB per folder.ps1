function Get-dirInfo($dir)
{
    $results = Get-ChildItem $dir -Recurse -ErrorAction SilentlyContinue | Measure-Object -Property length -Sum
    return [math]::round(($results).sum/1GB,3)
}

Get-dirInfo C:\
Get-dirInfo C:\PerfLogs
Get-dirInfo 'C:\Program Files'
Get-dirInfo 'C:\Program Files (x86)'
Get-dirInfo C:\Users
Get-dirInfo C:\Windows

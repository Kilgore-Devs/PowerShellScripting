$count = 1

while ($count -gt 0) {
    Write-Host "Count: $count"
    $count++
    if ($count -eq 1001){break}
}
write-host Count is over
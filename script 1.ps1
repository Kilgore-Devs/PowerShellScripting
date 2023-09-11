$$filepath = Read-Host "Enter absolute path"
if (Test-Path -Path $filepath) { "ITEM EXISTS" } else {
    $choice = Read-Host "Not found. Type FILE or FOLDER to create."
    if ($choice -in "FILE","FOLDER") {
        $name = Read-Host "Enter the $($choice.ToLower()) name"
        $parent = [System.IO.Path]::GetDirectoryName($filepath)
        if (-not (Test-Path $parent -PathType Container)) { mkdir $parent -Force }
        $itemType = if ($choice -eq "FILE") { "File" } else { "Directory" }
        New-Item (Join-Path $parent $name) -ItemType $itemType
    } else { "Invalid choice. Please enter 'FILE' or 'FOLDER'." }
}
"COMPLETE"

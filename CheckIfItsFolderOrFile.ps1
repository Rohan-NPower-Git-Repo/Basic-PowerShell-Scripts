# Prompt user for path
$path = Read-Host "Enter Path to Check"

# Check if it's a directory
if (Test-Path $path -PathType Container) {
    Write-Host "$path is a Folder."
}
# Check if it's a file
elseif (Test-Path $path -PathType Leaf) {
    Write-Host "$path is a File."
}
# Path does not exist
else {
    Write-Host "$path does not exist."
}

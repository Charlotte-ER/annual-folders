param(
    [Parameter()]
    [String] $path = 'C:\Users\'+ $Env:username + '\Documents'
)

Function Create-AnnualSubfolder($path)
{
    # Get the current calendar year
    [string] $currentYear = Get-Date -f yyyy

    # Get last calendar year
    [string] $lastYear = $currentYear-1

    # Loop through all of the folders under target File Structure
    Get-ChildItem  -Path $path -Recurse -Directory |

    # Find folders relating to last year
    Where-Object {$_.Name -eq $lastYear} | ForEach-Object {
       
        # Check whether the folder is empty
        If ($_.getfiles().count -ne 0)
        {
            # If not empty, construct the file path of corresponding folder for the current year
            $parentFolder = Split-Path -Path $_.FullName
            $currentYearFolder = Join-Path -Path $parentFolder -ChildPath $currentYear
            
            # Check if the annual subfolder already exists
            If (-not (Test-Path -Path $currentYearFolder))
            {
                # If it doesn't already exist, create the new annual folder
                New-Item -ItemType directory -Path $currentYearFolder
            }
        }
    }
}

Create-AnnualSubfolder -Path $path
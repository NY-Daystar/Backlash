$APPLICATION = "Backlash"
$VERSION = "1.0.0"

# [Required] - Path to search zip sources code
$SOURCES_PATH = ".\Projects"
# [Required] - Path to search zip sources code
$TARGET_PATH = ".\Output"
# [Required] - Path to search zip sources code
$CSV_FILE = ".\sources.csv"

###
# Entrypoint
###
function main {
    Write-Host "Running $APPLICATION in v$VERSION" -ForegroundColor "DarkYellow"

    If(Test-Path -Path $TARGET_PATH){
        Remove-Item $TARGET_PATH
    }

    If($CSV_FILE -eq "" -or !(Test-Path -Path $CSV_FILE)){
        Write-Host "CSV file not found : '$CSV_FILE'" -ForegroundColor "Yellow"
        $CSV_FILE = Read-Host "Write path to csv file to launch extract"
    }

    extract -csvFile $CSV_FILE -sourcesPath $SOURCES_PATH -targetPath $TARGET_PATH
}

function extract {
param($csvFile, $sourcesPath, $targetPath)
    
    Import-Csv $csvFile -Delimiter ';' |`
    ForEach-Object { 
        $project = $_.project
        $version = $_.version

        $projectSourcePath = [IO.Path]::Combine($sourcesPath, $project, $version) + ".zip"
        $projectTargetPath =  [IO.Path]::Combine($targetPath, $project, $version)
        
        Write-Host "$projectSourcePath - $projectTargetPath"

        If(!(Test-Path -Path $projectSourcePath)){
            Write-Host "Zip of project $project - $version doesn't exist" -ForegroundColor "Red"
        }

        If(!(Test-Path -Path $projectTargetPath)){
            $directoryToCreate = @{
                Path = $projectTargetPath
                ItemType = 'Directory'
                Force = $true
            }

            New-Item @directoryToCreate | Out-Null
        }

        Expand-Archive -Path $projectSourcePath -DestinationPath $projectTargetPath
        Write-Host "Extract successful: $projectTargetPath" -ForegroundColor "Green"
    }
    Write-Host "All extract are done" -ForegroundColor "DarkBlue"
}

main
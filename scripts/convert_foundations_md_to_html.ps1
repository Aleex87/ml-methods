$projectRoot = Split-Path -Parent $PSScriptRoot
$templatePath = Join-Path $projectRoot "docs\templates\md_page_template.html"

$mdFiles = Get-ChildItem -Path (Join-Path $projectRoot "docs\foundations") -Recurse -Filter *.md

foreach ($file in $mdFiles) {

    $htmlPath = [System.IO.Path]::ChangeExtension($file.FullName, ".html")

    pandoc $file.FullName `
        -f markdown `
        -t html `
        -s `
        --template "$templatePath" `
        -o $htmlPath

    Write-Host "Converted $($file.Name)"
}
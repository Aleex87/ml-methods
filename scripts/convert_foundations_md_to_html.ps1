$projectRoot = Split-Path -Parent $PSScriptRoot
$templatePath = Join-Path $projectRoot "docs\templates\md_page_template.html"

if (-not (Test-Path $templatePath)) {
    Write-Host "ERROR: Template not found at $templatePath"
    exit 1
}

$foundationsRoot = Join-Path $projectRoot "docs\foundations"
$mdFiles = Get-ChildItem -Path $foundationsRoot -Recurse -Filter *.md

foreach ($file in $mdFiles) {

    $htmlPath = [System.IO.Path]::ChangeExtension($file.FullName, ".html")

    # Determine subtitle based on folder
    $subtitle = "Foundations"
    $pathLower = $file.FullName.ToLower()

    if ($pathLower -like "*\docs\foundations\deep_learning\*") {
        $subtitle = "Deep Learning Foundations"
    }
    elseif ($pathLower -like "*\docs\foundations\classical_ml\*") {
        $subtitle = "Classical ML Foundations"
    }
    elseif ($pathLower -like "*\docs\foundations\general_concepts\*") {
        $subtitle = "General Concepts"
    }

    pandoc $file.FullName `
        -f markdown `
        -t html `
        -s `
        --template "$templatePath" `
        --metadata subtitle="$subtitle" `
        -o $htmlPath

    Write-Host "Converted $($file.Name) -> subtitle: $subtitle"
}
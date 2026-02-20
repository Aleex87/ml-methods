$mdFiles = Get-ChildItem -Path "docs/foundations" -Recurse -Filter *.md

foreach ($file in $mdFiles) {

    $htmlPath = [System.IO.Path]::ChangeExtension($file.FullName, ".html")

    pandoc $file.FullName `
        -f markdown `
        -t html `
        -s `
        -c ../../assets/css/style.css `
        --metadata title="" `
        -o $htmlPath

    Write-Host "Converted $($file.Name)"
}
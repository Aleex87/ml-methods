# Convert all docs/foundations/**/*.md to .html using a shared template.
# Requirements: pandoc installed and available in PATH.

$ErrorActionPreference = "Stop"

$root = (Get-Location).Path
$template = Join-Path $root "docs/templates/md_page_template.html"

if (!(Test-Path $template)) {
  Write-Host "Template not found: $template" -ForegroundColor Red
  exit 1
}

# Find all .md in foundations, excluding any README or notes if desired
$mdFiles = Get-ChildItem -Path "docs/foundations" -Recurse -Filter "*.md"

foreach ($md in $mdFiles) {
  $htmlPath = $md.FullName -replace "\.md$", ".html"

  # Title from filename (simple) -> you can improve later
  $title = ($md.BaseName -replace "_", " ") -replace "\b\w", { $_.Value.ToUpper() }

  # CSS path: from docs/foundations/** to docs/assets/css/style.css
  # Most files are in docs/foundations/<section>/ => ../../assets/css/style.css
  # If you ever add deeper nesting, adjust this logic later.
  $cssPath = "../../assets/css/style.css"

  # Subtitle (optional). Keep minimal.
  $subtitle = "Foundations topic"

  # Back link: go back to the section index.html
  # e.g. docs/foundations/deep_learning/train_validation_test.md -> ../index.html
  $backHref = "../index.html"

  # Convert
  pandoc $md.FullName `
    -o $htmlPath `
    --metadata title="$title" `
    --metadata css_path="$cssPath" `
    --metadata subtitle="$subtitle" `
    --metadata back_href="$backHref" `
    --template $template

  Write-Host "Converted: $($md.FullName) -> $htmlPath"
}

Write-Host "Done. Now update links from .md to .html in your indexes." -ForegroundColor Green

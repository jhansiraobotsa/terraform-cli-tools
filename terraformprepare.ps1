param (
    [string]$folder
)

if (-Not (Test-Path $folder)) {
    Write-Host "❌ Folder not found: $folder"
    exit 1
}

# Rename all .tf files to .tf.orig
Get-ChildItem -Path $folder -Filter "*.tf" | ForEach-Object {
    Rename-Item $_.FullName -NewName ($_.Name + ".orig")
    Write-Host "✅ Renamed: $($_.Name) → $($_.Name).orig"
}

# Create a default.auto.tfvars file with hardcoded template
$varsContent = @"
# Default Terraform variables
region = "us-east-1"
environment = "dev"
owner = "your-team"
"@

$templatePath = Join-Path $folder "default.auto.tfvars"
Set-Content -Path $templatePath -Value $varsContent
Write-Host "✅ Created template: default.auto.tfvars"

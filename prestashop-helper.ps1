$XamppPath = "C:\xampp\htdocs\"
$CurrentPath = $PWD.Path

function Write-Info {
    param (
        $Info
    )

    Write-Host ""
    Write-Host ""
    Write-Host "|"
    Write-Host "| $Info"
    Write-Host "|"
    Write-Host ""
    Write-Host ""
}

Write-Info -Info "Installing npm tool for proper compilation..."
npm install -g win-node-env

Write-Info -Info "Cleaning $XamppPath directory..."
Remove-Item -Path $XamppPath -Recurse -Force

Write-Info -Info "Cloning prestashop repository in $XamppPath directory..."
git clone https://github.com/PrestaShop/PrestaShop.git $XamppPath

Write-Info -Info "Setting write permissions for specific prestashop folders..."
.\set-permissions.ps1

Set-Location $XamppPath

Write-Info -Info "Downloading project's dependencies..."
composer install

Set-Location $CurrentPath
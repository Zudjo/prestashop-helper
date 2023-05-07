$XamppPath = "C:\xampp\htdocs\"
$CurrentPath = $PWD.Path

$DefaultTheme = $XamppPath + "admin-dev\themes\default"
$NewTheme = $XamppPath + "admin-dev\themes\new-theme"
$FOCore = $XamppPath + "themes"
$ClassicTheme = $XamppPath + "themes\classic\_dev"

function Write-Info {
    param (
        $Info
    )

    Write-Host ""
    Write-Host "---------------"
    Write-Host $Info
    Write-Host "---------------"
    Write-Host ""
}

function New-Assets {

    param(
        $path
    )

    Write-Info -Info "Compiling assets in $path..."
    Set-Location $path
    npm run build
}

function Install-Npm {

    param(
        $path
    )

    Write-Info -Info "Running 'npm install' in $path..."
    Set-Location $path
    npm install
}

Install-Npm($DefaultTheme)
Install-Npm($NewTheme)
Install-Npm($FOCore)
Install-Npm($ClassicTheme)

New-Assets($DefaultTheme)
New-Assets($NewTheme)
New-Assets($FOCore)
New-Assets($ClassicTheme)

Set-Location $CurrentPath
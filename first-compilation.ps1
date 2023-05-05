$XamppPath = "C:\xampp\htdocs\"
$CurrentPath = $PWD.Path

$DefaultTheme = $XamppPath + "admin-dev\themes\default"
$NewTheme = $XamppPath + "admin-dev\themes\new-theme"
$FOCore = $XamppPath + "themes"
$ClassicTheme = $XamppPath + "themes\classic\_dev"

function New-Assets {

    param(
        $path
    )

    Set-Location $path
    npm install
    npm run build
}

function Install-Npm {

    param(
        $path
    )

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
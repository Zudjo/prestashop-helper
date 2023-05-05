$BasePath = "C:\xampp\htdocs\"

$DefaultTheme = $BasePath + "admin-dev\themes\default"
$NewTheme = $BasePath + "admin-dev\themes\new-theme"
$FOCore = $BasePath + "themes"
$ClassicTheme = $BasePath + "themes\classic\_dev"

function New-Assets {

    param(
        $path
    )

    Set-Location $path
    npm run build
}

while (true) {
    New-Assets($DefaultTheme)
    New-Assets($NewTheme)
    New-Assets($FOCore)
    New-Assets($ClassicTheme)
}
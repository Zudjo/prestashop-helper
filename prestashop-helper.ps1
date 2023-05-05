$XamppPath = "C:\xampp\htdocs\"
$CurrentPath = $PWD.Path

Remove-Item -Path $XamppPath -Recurse -Force

git clone https://github.com/PrestaShop/PrestaShop.git $XamppPath

.\set-permissions.ps1

Set-Location $XamppPath

composer install

npm install -g win-node-env

Set-Location $CurrentPath

.\first-compilation.ps1

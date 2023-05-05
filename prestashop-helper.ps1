$XamppPath = "C:\xampp\htdocs\"

Remove-Item -Path $XamppPath -Recurse -Force

git clone https://github.com/PrestaShop/PrestaShop.git "C:\xampp\htdocs"

.\set-permissions.ps1

composer install

npm install -g win-node-env

.\first-compilation.ps1

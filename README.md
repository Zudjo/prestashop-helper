# Prestashop helper

This script helps install git-cloned prestashop 8.0.4 repository on windows.

## Set up XAMPP

1. Install XAMPP with PHP 8.1.17 (link [here](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.17/xampp-windows-x64-8.1.17-0-VS16-installer.exe))

2. Open the `php.ini` and activate the extensions `gd` and `intl` (removing the `;` in front)

3. Restart apache and mysql

4. Create the database that will be used by Prestashop

## Set up Prestashop

1. Empty the `C:\xampp\htdocs` folder and run `git clone https://github.com/PrestaShop/PrestaShop.git "C:\xampp\htdocs"`

2. Run `icacls * /grant Everyone:F` (**DON'T RUN THIS IN PRODUCTION** - for more details read [here](https://devdocs.prestashop-project.org/8/basics/installation/localhost/#setting-up-file-rights) )

3. Run `composer install`

4. Run `npm install -g win-node-env`

5. Run `.\first-compilation.ps1` that you find in the repository

## Install Prestashop

Run this, modifying parameters as needed

```
php .\install-dev\index_cli.php

--domain=localhost
--db_server=localhost
--db_name=
--db_user=root
--db_password=
--prefix=
--email=
--password=
```

## Fix PrestaShopException

To fix the exception run this on the database

```
INSERT INTO `{PREFIX}_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `stores`)
VALUES
	(10, 'large_banner', 960, 400, 0, 1, 0, 0, 0),
	(9, 'product_listing', 220, 220, 1, 1, 1, 1, 0),
	(8, 'category_default', 960, 350, 0, 1, 0, 0, 0),
	(7, 'home_default', 250, 250, 1, 0, 0, 0, 0),
	(6, 'large_default', 500, 500, 1, 0, 0, 0, 0),
	(5, 'medium_default', 300, 300, 1, 1, 1, 1, 0),
	(4, 'small_default', 125, 125, 1, 1, 1, 1, 0),
	(3, 'cart_default', 80, 80, 1, 0, 0, 0, 0);

```

## Keep assets compiled

Run `.\make-assets.ps1` to compile once.

Run `.\make-assets-watch.ps1` to watch the compilation.
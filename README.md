# OXS :: Smarty Manufacturer Picture

This module adds the missing `manufacturer_picture.tpl` template for the OXID eShop Smarty admin theme.

## Compatibility

- OXID eShop 7.0.x
- Requires `oxid-esales/smarty-admin-theme`

## Installation

This package is not published on Packagist. Add it as a VCS repository:

```bash
composer config repositories.oxs-smarty-manufacturer-picture vcs https://github.com/oxid-support/smarty-manufacturer-picture
composer require oxid-support/smarty-manufacturer-picture:*
```

After installation, run migrations and activate the module:

```bash
vendor/bin/oe-eshop-db_migrate migrations:migrate
vendor/bin/oe-console oe:module:activate oxs_smarty_manufacturer_picture
```

## Features

- Adds the "Pictures" tab to the manufacturer admin section
- Supports uploading and managing manufacturer images:
  - Icon
  - Alternative Icon
  - Picture
  - Thumbnail
  - Promotion Icon
- Adds missing shop config values for image sizes:
  - `sManufacturerPicturesize` (1140x1140)
  - `sManufacturerThumbnailsize` (370x370)
  - `sManufacturerPromotionsize` (370x107)

## License

Proprietary - OXID eSales AG

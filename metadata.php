<?php

/**
 * Copyright © OXID eSales AG. All rights reserved.
 * See LICENSE file for license details.
 */

/**
 * Metadata version
 */
$sMetadataVersion = '2.1';

/**
 * Module information
 */
$aModule = [
    'id'          => 'oxs_smarty_manufacturer_picture',
    'title'       => 'OXS :: Smarty Manufacturer Picture',
    'description' => 'Adds the missing manufacturer_picture.tpl template for Smarty admin theme',
    'version'     => '1.0.0',
    'author'      => 'OXID Support',
    'url'         => 'https://oxid-esales.com',
    'email'       => 'support@oxid-esales.com',
    'templates'   => [
        'manufacturer_picture.tpl' => 'views/admin_smarty/tpl/manufacturer_picture.tpl',
    ],
    'blocks'      => [
        [
            'template' => 'manufacturer_main.tpl',
            'block'    => 'admin_manufacturer_main_form',
            'file'     => 'views/admin_smarty/blocks/manufacturer_main_form.tpl',
        ],
    ],
];

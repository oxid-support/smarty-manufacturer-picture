<?php

/**
 * Copyright © OXID eSales AG. All rights reserved.
 * See LICENSE file for license details.
 */

declare(strict_types=1);

namespace OxidSupport\SmartyManufacturerPicture\Migrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

final class Version20231217140000 extends AbstractMigration
{
    public function up(Schema $schema): void
    {
        $this->addConfigIfNotExists('sManufacturerPicturesize', '1140*1140');
        $this->addConfigIfNotExists('sManufacturerThumbnailsize', '370*370');
        $this->addConfigIfNotExists('sManufacturerPromotionsize', '370*107');
    }

    public function down(Schema $schema): void
    {
    }

    private function addConfigIfNotExists(string $name, string $value): void
    {
        $this->addSql(
            "INSERT INTO oxconfig (OXID, OXSHOPID, OXMODULE, OXVARNAME, OXVARTYPE, OXVARVALUE)
             SELECT MD5(CONCAT(:name, NOW(), RAND())), 1, '', :name, 'str', :value
             FROM DUAL
             WHERE NOT EXISTS (
                 SELECT 1 FROM oxconfig WHERE OXVARNAME = :name AND OXMODULE = ''
             )",
            ['name' => $name, 'value' => $value]
        );
    }
}

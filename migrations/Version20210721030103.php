<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210721030103 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'Add imageName attrubute';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE programs ADD image_name VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE user ADD github_access_token VARCHAR(255) DEFAULT NULL, ADD facebook_id VARCHAR(255) DEFAULT NULL, ADD facebook_access_token VARCHAR(255) DEFAULT NULL, ADD googleplus_id VARCHAR(255) DEFAULT NULL, ADD googleplus_access_token VARCHAR(255) DEFAULT NULL, ADD linkedin_id VARCHAR(255) DEFAULT NULL, ADD linkedin_access_token VARCHAR(255) DEFAULT NULL, ADD stackexchange_id VARCHAR(255) DEFAULT NULL, ADD stackexchange_access_token VARCHAR(255) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE programs DROP image_name');
        $this->addSql('ALTER TABLE user DROP github_access_token, DROP facebook_id, DROP facebook_access_token, DROP googleplus_id, DROP googleplus_access_token, DROP linkedin_id, DROP linkedin_access_token, DROP stackexchange_id, DROP stackexchange_access_token');
    }
}

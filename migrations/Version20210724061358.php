<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210724061358 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE advertisements ADD CONSTRAINT FK_5C755F1EF675F31B FOREIGN KEY (author_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_5C755F1EF675F31B ON advertisements (author_id)');
        $this->addSql('ALTER TABLE user ADD first_name VARCHAR(255) DEFAULT NULL, ADD last_name VARCHAR(255) NOT NULL, ADD image_name VARCHAR(255) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE advertisements DROP FOREIGN KEY FK_5C755F1EF675F31B');
        $this->addSql('DROP INDEX IDX_5C755F1EF675F31B ON advertisements');
        $this->addSql('ALTER TABLE user DROP first_name, DROP last_name, DROP image_name');
    }
}

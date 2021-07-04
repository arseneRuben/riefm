<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210704182648 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE advertisements (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL, content LONGTEXT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE timespaces (id INT AUTO_INCREMENT NOT NULL, program_id INT DEFAULT NULL, day_of_the_week SMALLINT NOT NULL, start_time TIME NOT NULL, end_time TIME NOT NULL, INDEX IDX_126169983EB8070A (program_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE timespaces ADD CONSTRAINT FK_126169983EB8070A FOREIGN KEY (program_id) REFERENCES programs (id)');
        $this->addSql('DROP TABLE pins');
        $this->addSql('DROP TABLE pod_cast');
        $this->addSql('ALTER TABLE podcasts ADD program_id INT NOT NULL, ADD time_space_id INT NOT NULL');
        $this->addSql('ALTER TABLE podcasts ADD CONSTRAINT FK_AE09E83F3EB8070A FOREIGN KEY (program_id) REFERENCES programs (id)');
        $this->addSql('ALTER TABLE podcasts ADD CONSTRAINT FK_AE09E83F87D2108C FOREIGN KEY (time_space_id) REFERENCES timespaces (id)');
        $this->addSql('CREATE INDEX IDX_AE09E83F3EB8070A ON podcasts (program_id)');
        $this->addSql('CREATE INDEX IDX_AE09E83F87D2108C ON podcasts (time_space_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE podcasts DROP FOREIGN KEY FK_AE09E83F87D2108C');
        $this->addSql('CREATE TABLE pins (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, description LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, interactive TINYINT(1) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('CREATE TABLE pod_cast (id INT AUTO_INCREMENT NOT NULL, description LONGTEXT CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('DROP TABLE advertisements');
        $this->addSql('DROP TABLE timespaces');
        $this->addSql('ALTER TABLE podcasts DROP FOREIGN KEY FK_AE09E83F3EB8070A');
        $this->addSql('DROP INDEX IDX_AE09E83F3EB8070A ON podcasts');
        $this->addSql('DROP INDEX IDX_AE09E83F87D2108C ON podcasts');
        $this->addSql('ALTER TABLE podcasts DROP program_id, DROP time_space_id');
    }
}

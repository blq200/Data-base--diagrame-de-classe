CREATE TABLE `Produit`(
    `Code unique` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Libellé` VARCHAR(255) NOT NULL,
    `Description` TEXT NOT NULL,
    `Prix unitaire` INT NOT NULL,
    `Quantité en stock` INT NOT NULL
);
ALTER TABLE
    `Produit` ADD PRIMARY KEY `produit_code unique_primary`(`Code unique`);
CREATE TABLE `Clients`(
    `code unique` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Nom` VARCHAR(255) NOT NULL,
    `Prénom` VARCHAR(255) NOT NULL,
    `Adresse` VARCHAR(255) NOT NULL,
    `Numéro de téléphone` INT NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Mot de passe` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Clients` ADD PRIMARY KEY `clients_code unique_primary`(`code unique`);
CREATE TABLE `Commande`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Adresse` TEXT NOT NULL,
    `Date` DATE NOT NULL,
    `id produit` INT NOT NULL,
    `numero produit` INT NOT NULL
);
ALTER TABLE
    `Commande` ADD PRIMARY KEY `commande_id_primary`(`id`);
CREATE TABLE `table_4`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id de clients` INT NOT NULL,
    `numero produit` INT NOT NULL
);
ALTER TABLE
    `table_4` ADD PRIMARY KEY `table_4_id_primary`(`id`);
CREATE TABLE `numero de produit`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `id produit` INT NOT NULL,
    `numero produit` INT NOT NULL
);
ALTER TABLE
    `numero de produit` ADD PRIMARY KEY `numero de produit_id_primary`(`id`);
ALTER TABLE
    `Commande` ADD CONSTRAINT `commande_adresse_foreign` FOREIGN KEY(`Adresse`) REFERENCES `table_4`(`id`);
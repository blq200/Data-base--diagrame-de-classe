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
    `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Adresse` TEXT NOT NULL,
    `Date` DATE NOT NULL,
    `Id produit` INT NOT NULL,
    `Numero produit` INT NOT NULL
);
ALTER TABLE
    `Commande` ADD PRIMARY KEY `commande_id_primary`(`Id`);
CREATE TABLE `Quantité`(
    `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Id produit` INT NOT NULL,
    `Numero produit` INT NOT NULL,
    `Prix` INT NOT NULL
);
ALTER TABLE
    `Quantité` ADD PRIMARY KEY `quantité_id_primary`(`Id`);
ALTER TABLE
    `Commande` ADD CONSTRAINT `commande_id produit_foreign` FOREIGN KEY(`Id produit`) REFERENCES `Clients`(`code unique`);

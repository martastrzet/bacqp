PRAGMA foreign_keys = ON;

CREATE TABLE Serwery (
        id INTEGER PRIMARY KEY,
        adres VARCHAR(50),
        katalog_docelowy VARCHAR(200),
        klucz VARCHAR(250)
        );

CREATE TABLE Katalogi (
        nazwa VARCHAR(50),
        id_serwera INTEGER,
        FOREIGN KEY(id_serwera) REFERENCES Serwery(id)
        );

insert into Serwery(id, adres, katalog_docelowy, klucz) values(NULL, 'marta@vm.mnabozny.pl', '/data/marta/', '/home/marta/.ssh/id_rsa');
insert into Katalogi(nazwa, id_serwera) values('/home/marta/marta-programy', 1);


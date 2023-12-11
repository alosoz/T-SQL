CREATE DATABASE APOTHEEK;
GO

USE APOTHEEK;
GO


CREATE TABLE Huisarts (
    huisarts_code varchar(255) NOT NULL PRIMARY KEY,
    huisarts_naam varchar(255),
    huisarts_plaats varchar(255)
);
GO

CREATE TABLE Medicijn (
    medecijn_code varchar(255) NOT NULL PRIMARY KEY,
    omschrijving varchar(255)
);
GO

CREATE TABLE Patient (
    patient_nr int NOT NULL PRIMARY KEY,
    patient_naam varchar(255),
    geboortedatum date,
    huisarts_code varchar(255) NOT NULL,
    FOREIGN KEY (huisarts_code) REFERENCES Huisarts(huisarts_code)
);
GO

CREATE TABLE Aankoop (
    patient_nr int NOT NULL,
    datum_aankoop date,
    medecijn_code varchar(255) NOT NULL,
    hoeveelheid int,
    CONSTRAINT PK_Aankoop PRIMARY KEY(patient_nr, datum_aankoop, medecijn_code),
    FOREIGN KEY (patient_nr) REFERENCES Patient(patient_nr),
    FOREIGN KEY (medecijn_code) REFERENCES Medicijn(medecijn_code)
);
GO

INSERT INTO Huisarts (huisarts_code, huisarts_naam, huisarts_plaats)
VALUES ('VER', 'V. Vader', 'Almere');
GO


INSERT INTO Medicijn (medecijn_code, omschrijving)
VALUES ('PAC500', 'Paracetamol 500 mg');
GO


INSERT INTO Patient (patient_nr, patient_naam, geboortedatum, huisarts_code)
VALUES (12, 'T. van der Pen', '1965-04-23', 'VER');
GO

INSERT INTO Aankoop (patient_nr, datum_aankoop, medecijn_code, hoeveelheid)
VALUES (12, '2014-02-17', 'PAC500', 20);
GO

SELECT *
FROM dbo.Aankoop
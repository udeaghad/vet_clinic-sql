/* Database schema to keep the structure of entire database. */
CREATE TABLE ANIMALS (
 ID INT,
 NAME VARCHAR,
 DATE_OF_BIRTH DATE,
 ESCAPE_ATTEMPTS INT,
 NEUTERED BOOLEAN,
 WEIGHT_KG DECIMAL
 );

ALTER TABLE ANIMALS
ADD SPECIES VARCHAR;

CREATE TABLE OWNERS(
  ID INT GENERATED ALWAYS AS IDENTITY,
  FULL_NAME VARCHAR,
  AGE INT,
  PRIMARY KEY(ID)
);

CREATE TABLE SPECIES (
  ID INT GENERATED ALWAYS AS IDENTITY,
  NAME VARCHAR
);

ALTER TABLE SPECIES
ADD PRIMARY KEY(ID);

ALTER TABLE ANIMALS
ALTER COLUMN ID
SET NOT NULL;

ALTER TABLE ANIMALS
ALTER COLUMN ID
ADD GENERATED ALWAYS AS IDENTITY;

ALTER TABLE ANIMALS
ADD PRIMARY KEY(ID);

ALTER TABLE SPECIES
ADD PRIMARY KEY(ID);

ALTER TABLE ANIMALS
DROP COLUMN SPECIES;

ALTER TABLE ANIMALS
ADD COLUMN SPECIES_ID INT;


ALTER TABLE ANIMALS
ADD CONSTRAINT CONSTRAINT_FKEY
FOREIGN KEY(SPECIES_ID)
REFERENCES SPECIES(ID)
ON DELETE CASCADE;

ALTER TABLE ANIMALS
ADD COLUMN OWNER_ID INT;

ALTER TABLE ANIMALS
ADD CONSTRAINT CONSTRAINT_OWNERS_FKEY
FOREIGN KEY(OWNER_ID)
REFERENCES OWNERS(ID)
ON DELETE CASCADE;

CREATE TABLE VETS (
  ID SERIAL, 
  NAME VARCHAR,
  AGE INT,
  DATE_OF_GRADUATION DATE,
  PRIMARY KEY (ID)
);

CREATE TABLE SPECIALIZATION (
  SPECIES_ID INT,
  VETS_ID INT,
  PRIMARY KEY (SPECIES_ID, VETS_ID),
  CONSTRAINT FK_SPECIES FOREIGN KEY(SPECIES_ID) REFERENCES SPECIES(ID),
  CONSTRAINT FK_VETS FOREIGN KEY(VETS_ID) REFERENCES VETS(ID)
);

CREATE TABLE VISITS (
  ANIMALS_ID INT,
  VETS_ID INT,
  DATE_OF_VISIT DATE,
  PRIMARY KEY(ANIMALS_ID, VETS_ID),
  CONSTRAINT FK_ANIMALS FOREIGN KEY(ANIMALS_ID) REFERENCES ANIMALS(ID),
  CONSTRAINT FK_VETS FOREIGN KEY(VETS_ID) REFERENCES VETS(ID)
);
/*Queries that provide answers to the questions from all projects.*/

-- display animals that their names end with 'mon'
SELECT *
FROM ANIMALS
WHERE NAME LIKE '%mon';

-- display animals born between 2016 and 2019
SELECT NAME
FROM ANIMALS
WHERE DATE_OF_BIRTH BETWEEN '2016-01-01' AND '2019-12-31';

-- display animals neutered and have attempted escape less than 3 times
SELECT NAME
FROM ANIMALS
WHERE NEUTERED = true AND ESCAPE_ATTEMPTS < 3;

-- display animals and their date of birth whose name is 'Agumon' or 'Pikachu'
SELECT NAME, DATE_OF_BIRTH
FROM ANIMALS
WHERE NAME IN ('Agumon','Pikachu');

--display animals that weigh less than 10.5kg and their escape attempts
SELECT NAME, ESCAPE_ATTEMPTS
FROM ANIMALS
WHERE WEIGHT_KG > 10.5;

--display all animals that has been neutered
SELECT *
FROM ANIMALS
WHERE NEUTERED = TRUE;

-- display all animals that their name is "Gabumon"
SELECT *
FROM ANIMALS
WHERE NOT NAME = 'Gabumon';

-- display all animals that weigh between 10.4kg and 17.3kg
SELECT *
FROM ANIMALS
WHERE WEIGHT_KG >= 10.4 AND WEIGHT_KG <= 17.3;

-- Display how many animals are there
select count(*) from animals;

-- Display how many animals that have never tried to escape
select count(escape_attempts) from animals
where escape_attempts = 0;

-- Display the average weight of animals
select avg(weight_kg) from animals;

-- Display who escapes the most, neutered or not neutered animals
select max(escape_attempts) from animals;

select name from animals
where escape_attempts = 7;

-- Display the minimum weight of each type of animal
select species, min(weight_kg), max(weight_kg) from animals
group by species;

-- Display the average number of escape attempts per animal type of those born between 1990 and 2000
select species, avg(escape_attempts) from animals
where date_of_birth between '1990-01-01' and '2000-12-31'
group by species;

-- LIST animals that belong to melody Pond
SELECT ANIMALS.ID, NAME, FULL_NAME
FROM ANIMALS
JOIN OWNERS
ON OWNER_ID = OWNERS.ID
WHERE FULL_NAME = 'Melody Pond';

--LIST ALL ANIMALS THAT ARE POKEMON
SELECT ANIMALS.ID, ANIMALS.NAME, SPECIES.NAME
FROM ANIMALS
JOIN SPECIES
ON SPECIES_ID = SPECIES.ID
WHERE SPECIES.NAME = 'Pokemon';

--List all owners and their animals, remember to include those that don't own any animal.
SELECT ANIMALS.ID, ANIMALS.NAME, FULL_NAME
FROM ANIMALS
RIGHT JOIN OWNERS
ON OWNER_ID = OWNERS.ID;

-- List how many animals are there per species
SELECT SPECIES.ID, SPECIES.NAME, COUNT(ANIMALS.SPECIES_ID)
FROM ANIMALS
JOIN SPECIES
ON SPECIES_ID = SPECIES.ID
GROUP BY SPECIES.ID;

-- List all Digimon owned by Jennifer Orwell.
SELECT ANIMALS.ID, ANIMALS.NAME AS ANIMAL_NAME, SPECIES.NAME AS SPECIES_NAME, FULL_NAME AS OWNERS_NAME
FROM ANIMALS
JOIN SPECIES
ON SPECIES_ID = SPECIES.ID
JOIN OWNERS
ON OWNER_ID = OWNERS.ID
WHERE FULL_NAME = 'Jennifer Orwell' AND SPECIES.NAME = 'Digimon';

--List all animals owned by Dean Winchester that haven't tried to escape.
SELECT ANIMALS.ID, ANIMALS.NAME AS ANIMAL_NAME, ESCAPE_ATTEMPTS, FULL_NAME AS OWNERS_NAME
FROM ANIMALS
JOIN OWNERS
ON OWNER_ID = OWNERS.ID 
WHERE FULL_NAME = 'Dean Winchester' AND ESCAPE_ATTEMPTS = 0;

-- List Who owns the most animals
SELECT FULL_NAME AS OWNERS_NAME, COUNT(OWNER_ID)
FROM ANIMALS
JOIN OWNERS
ON OWNER_ID = OWNERS.ID
GROUP BY FULL_NAME;

SELECT FULL_NAME AS OWNERS_NAME, COUNT(OWNER_ID)
FROM ANIMALS
JOIN OWNERS
ON OWNER_ID = OWNERS.ID
GROUP BY FULL_NAME
HAVING COUNT(OWNER_ID) = 3;
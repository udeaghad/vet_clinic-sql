/* Populate database with sample data. */

INSERT INTO ANIMALS VALUES(1,'Agumon','Feb 03, 2020',0,true,10.23);

INSERT INTO ANIMALS VALUES(2,'Gabumon','Nov 15, 2018',2,true,8);

INSERT INTO ANIMALS VALUES(3,'Pikachu','Jan 07, 2021',1,false,15.04);

INSERT INTO ANIMALS VALUES(4,'Devimon','May 12, 2017',5,true,11);

INSERT INTO ANIMALS VALUES 
(5,'Charmander', 'feb 08,2020',0,false,11),
(6, 'Plantmon', 'nov 15,2021',2,true,5.7),
(7,'Squirtle', 'apr 02, 1993',3, false,12.13),
(8, 'Angemon', 'jul 07, 2005',1, true, 45),
(9, 'Boarmon', 'jul 07, 2005',7, true, 20.14),
(10, 'Blossom', 'oct 13, 1998',3, true, 17),
(11, 'Ditto', 'may 14, 2022',4, true, 22);

UPDATE ANIMALS
SET DATE_OF_BIRTH = 'JUN 12, 2005'
WHERE ID = 8;

update animals
set species = 'digimon'
where name like '%mon';
 
update animals
set species = 'pokemon'
where not species = 'digimon';

INSERT INTO OWNERS(FULL_NAME, AGE)
VALUES('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO SPECIES(NAME)
VALUES ('Pokemon'),
('Digimon');

UPDATE ANIMALS
SET SPECIES_ID = 2
WHERE NAME LIKE '%mon';

UPDATE ANIMALS
SET SPECIES_ID = 1
WHERE NOT NAME LIKE '%mon';

UPDATE ANIMALS
SET OWNER_ID = 1
WHERE NAME IN ('Agumon');

UPDATE ANIMALS
SET OWNER_ID = 2
WHERE NAME IN ('Gabumon','Pikachu');

UPDATE ANIMALS
SET OWNER_ID = 3
WHERE NAME IN ('Devimon','Plantmon');

UPDATE ANIMALS
SET OWNER_ID = 4
WHERE NAME IN ('Charmander','Squirtle','Blossom');

UPDATE ANIMALS
SET OWNER_ID = 5
WHERE NAME IN ('Angemon','Boarmon');

INSERT INTO VETS(NAME, AGE, DATE_OF_GRADUATION)
VALUES ('William Tatcher', 45, 'Apr 23, 2000'),
('Maisy Smith', 26, 'Jan 17, 2019'),
('Stephanie Mendez', 64, 'May 4, 1981'),
('Jack Harkness', 38, 'Jun 8, 2008');

INSERT INTO SPECIALIZATION(SPECIES_ID, VETS_ID)
VALUES(1,1),
(1,3),
(2,4);

INSERT INTO VISITS(ANIMALS_ID, VETS_ID, DATE_OF_VISIT)
VALUES(1,1, 'MAY 24, 2020'),
(1, 3, 'JUL 22, 2020'),
(2, 4, 'FEB 02,2021'),
(3, 2, 'JAN 05, 2020'),
(3, 2, 'MAR 08, 2020'),
(3, 2, 'MAY 14, 2020'),
(4, 3, 'MAY 04, 2021'),
(5, 4, 'FEB 24, 2021'),
(6, 2, 'DEC 21, 2019'),
(6, 1, 'AUG 10, 2020'),
(6, 2, 'APR 07, 2021'),
(7, 3, 'SEP 29, 2019'),
(8, 4, 'OCT 03, 2020'),
(8, 4, 'NOV 04, 2020'),
(9, 2, 'JAN 24, 2019'),
(9, 2, 'MAY 15, 2019'),
(9, 2, 'FEB 27, 2020'),
(9, 2, 'AUG 03, 2020'),
(10, 3, 'MAY 24, 2020'),
(10, 1, 'JAN 11, 2021');
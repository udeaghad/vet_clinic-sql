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

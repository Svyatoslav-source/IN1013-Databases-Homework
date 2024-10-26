DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

    
    
INSERT INTO PetEvent VALUES (‘Fluffy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’);

INSERT INTO petPet VALUES ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);
INSERT INTO PetEvent VALUES (‘Hammy’, ‘2020-10-15’, ‘vet’, ‘antibiotics’);

UPDATE PetEvent SET remark = "5 kittens, 3 female, 2 male" WHERE petname = "Fluffy" AND eventdate = "1995-05-15";

UPDATE PetEvent SET petname = "Claws" WHERE eventdate = "1997-08-03" AND eventtype = "vet";

UPDATE petPet SET death = "2020-09-01" WHERE petname = "Puffball";

DELETE FROM petPet WHERE petname = "Buffy";
DELETE FROM petEvent WHERE petname = "Buffy";

    
    
	


--Retrieve all info on the first 10 tenants (HINT: Use LIMIT)
SELECT * FROM tenants LIMIT 10;

--Retrieve the name, age, and gender of the first 10 tenants
SELECT name, age, gender FROM tenants LIMIT 10;

--Retrieve all info on all tenants older than 65
SELECT * FROM tenants WHERE age > 65;

--Retrieve all info on all tenants in apartment with id 20
SELECT * FROM tenants WHERE tenants.apartment_id = 20;

--Retrieve all info on all tenants in apartment with ids 20 or 21
SELECT * FROM tenants WHERE tenants.apartment_id = 20 OR tenants.apartment_id = 21;


--Retrieve the names of all doormen and the address where they work
SELECT doormen.name, building.address 
FROM doormen
JOIN buildings ON buildings.id = doormen.building_id;

--Delete all tenants whose age is greater than 65
DELETE FROM tenants WHERE age > 65;

--Change all doormen from building 3 to work night shifts.
UPDATE doormen
SET shift = 'Night'
WHERE building_id = 3;

--Create one new tenant, put them in any apartment you want
INSERT INTO tenants (id, name, age, gender, apartment_id) 
VALUES (5372, 'Michael Jordan', 23, 'Male', 56);




--BONUS!! You are highly encouraged to complete these 🙂

--Find just the ids for all apartments for building with id of 2
SELECT apartments.building_id 
FROM apartments
JOIN buildings 
ON buildings.id = apartments.building_id
WHERE buildings.id = 2;

--Find all info for apartments in building number 3 whose price is greater than $2300
SELECT * FROM apartments
JOIN buildings 
ON buildings.id = apartments.building_id
WHERE apartments.price > 2300;
AND apartments.building_id = 3;

--Geriatric Birthday! Update all tenants whose age is 90 to be 91

UPDATE tenants
SET age = 91
WHERE age = 90;


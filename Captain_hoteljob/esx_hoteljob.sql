USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_hotel', 'Hotel', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_hotel', 'Hotel', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_hotel', 'Hotel', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('hotel','Hotel')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('hotel',0,'recruit','Débutant',20,'{}','{}'),
	('hotel',1,'officer','Hotelier',40,'{}','{}'),
	('hotel',2,'sergeant','Responsable',60,'{}','{}'),
	('hotel',3,'lieutenant','Sous-PDG',85,'{}','{}'),
	('hotel',4,'boss','PDG',100,'{}','{}')
;
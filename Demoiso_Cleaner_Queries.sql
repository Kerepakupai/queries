SET FOREIGN_KEY_CHECKS=0;


SET FOREIGN_KEY_CHECKS=1;

SELECT * FROM global_managements;


SELECT * from global_departments;

SELECT * FROM iso_documents;

SELECT * from core.companies where id = 97;

SELECT * FROM global_clients;

SELECT * FROM iso_evaluationquestions;

SELECT * FROM security_users;

/*

DELETE FROM core.companies WHERE id != 97;
DELETE FROM global_departments WHERE id != 28;
DELETE FROM iso_documents WHERE id != 1;
DELETE FROM global_managements WHERE id != 1;
DELETE FROM global_clients WHERE id != 97;

DELETE FROM iso_evaluationquestions WHERE id NOT IN (1, 7, 10, 15, 21, 24);

UPDATE iso_evaluationquestions SET author_id = 210;

DELETE FROM iso_origins_classifications WHERE id NOT IN (1, 6, 10, 14);

UPDATE global_managements SET deleted_at = NULL;
UPDATE global_departments SET deleted_at = NULL;

DELETE FROM iso_departments WHERE id != 1;

DELETE FROM iso_subdepartments WHERE id != 102;
UPDATE iso_subdepartments SET department_id = 28 WHERE id = 102;

DELETE FROM demoiso_blueisocial.security_roles WHERE name NOT LIKE ('ISO:%');
DELETE FROM demoiso_blueisocial.security_roles WHERE id = 77;
DELETE FROM demoiso_blueisocial.security_roles_by_user WHERE user_id NOT IN (150, 210);

DELETE FROM demoiso_blueisocial.security_roles_by_user WHERE role_id NOT IN (7, 11, 18, 41, 42);
DELETE FROM security_permissions_by_role WHERE role_id NOT IN (7,11,18,41,42);

DELETE FROM demoiso_blueisocial.system_applications WHERE id NOT IN (2, 3);

DELETE FROM demoiso_blueisocial.system_modules WHERE id IN (1, 2);

UPDATE `blueisocial`.`system_applications` SET `path`='http://demoiso.inpact.cl/iso' WHERE `id`='2';
UPDATE `blueisocial`.`system_applications` SET `path`='http://demoiso.inpact.cl/iso/admin' WHERE `id`='3';

delete from blueisocial.security_roles_by_user where user_id = 219;


DELETE FROM demoiso_blueisocial.iso_documents_versions WHERE id != 242;


DELETE FROM blueisocial.iso_documents;
DELETE FROM blueisocial.iso_documents_versions;

TRUNCATE TABLE blueisocial.system_notifications;

*/


SELECT * FROM iso_origins;

SELECT * FROM iso_origins_classifications;

SELECT *
FROM iso_departments;

SELECT *
FROM global_departments;


SELECT * FROM iso_subdepartments;



-- SELECT * FROM iso_correctiveactions_requirements;


-- #########   Pendientes  ############## --
/*
DELETE FROM community_profile WHERE user_id NOT IN (150, 210);


*/


SELECT * FROM blueisocial.security_users;


select * from demoiso_blueisocial.iso_qualityobjectives;

-- DELETE FROM demoiso_blueisocial.iso_qualityobjectives WHERE id != 334;
-- DELETE FROM demoiso_blueisocial.iso_qualityobjectives_files;
-- DELETE FROM demoiso_blueisocial.iso_qualityobjectives_measurement WHERE qualityobjective_id != 334;
-- DELETE FROM demoiso_blueisocial.iso_qualityobjectives_measurement_log WHERE qualityobjective_id != 334;
-- DELETE FROM demoiso_blueisocial.iso_qualityobjectives_strategies WHERE qualityobjective_id != 334;

-- truncate TABLE demoiso_blueisocial.iso_qualityobjectives_files;
-- truncate TABLE demoiso_blueisocial.iso_qualityobjectives_measurement;
-- truncate TABLE demoiso_blueisocial.iso_qualityobjectives_measurement_log;
-- truncate TABLE demoiso_blueisocial.iso_qualityobjectives_strategies;
-- truncate TABLE demoiso_blueisocial.iso_qualityobjectives_units;

UPDATE demoiso_blueisocial.iso_documents_versions SET author_id = 150;
UPDATE demoiso_blueisocial.iso_documents SET author_id = 150;

UPDATE demoiso_blueisocial.iso_documents SET management_id = 1;

UPDATE demoiso_blueisocial.iso_documents SET department_id = 1;

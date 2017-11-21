DELETE FROM demoiso_blueisocial.iso_proceduresv2 WHERE section_id != 30;
DELETE FROM demoiso_blueisocial.iso_procedures_sections WHERE id != 30;

DELETE FROM demoiso_blueisocial.iso_proceduresv2 WHERE  chapter_id != 13;
DELETE FROM demoiso_blueisocial.iso_procedures_sections WHERE chapter_id != 13;

DELETE FROM demoiso_blueisocial.iso_procedures_chapters WHERE id != 13;

DELETE FROM demoiso_blueisocial.iso_proceduresv2_chapters WHERE number != 16;
DELETE FROM demoiso_blueisocial.iso_proceduresv2_sections WHERE chapter_id != 13;


DELETE FROM demoiso_blueisocial.iso_proceduresv2_versions WHERE
procedure_id NOT IN (SELECT id FROM demoiso_blueisocial.iso_proceduresv2 WHERE chapter_id = 13);

DELETE FROM demoiso_blueisocial.iso_proceduresv2_versions WHERE
procedure_id NOT IN (SELECT id FROM demoiso_blueisocial.iso_proceduresv2 WHERE chapter_id = 30);

UPDATE iso_proceduresv2 SET author_id = 150;


SELECT * FROM demoiso_blueisocial.iso_proceduresv2_versions WHERE procedure_id IN (
40,
234,
236,
237,
238,
239,
240,
362,
392,
412,
496,
504,
638,
639,
701
);

DELETE
FROM iso_proceduresv2_versions WHERE number > 5;





SELECT * FROM demoiso_blueisocial.iso_proceduresv2_versions_approvers WHERE
version_id NOT IN (SELECT id FROM demoiso_blueisocial.iso_proceduresv2_versions WHERE procedure_id NOT IN (SELECT id FROM demoiso_blueisocial.iso_proceduresv2 WHERE chapter_id = 13));

insert into system_applications(created_at,updated_at,author_id,name,code,path,icon,icon_v2,priority,status)
values ('2017-11-10 16:33:55','2017-11-10 16:33:55',150,'Base Documental','ISOPROCEDURES','http://demoiso.dev/v2/isoprocedures','icon-file','fa fa-file',2,1);



-- id;created_at;updated_at;author_id;application_id;name;code;path;status
-- 9;2017-11-10 16:47:56;2017-11-10 16:47:57;150;6;Base Documental;ISOPROCED;iso/isoprocedures;1


INSERT INTO system_modules(created_at,updated_at,author_id,application_id,name,code,path,status)
    VALUES ('2017-11-10 16:47:56','2017-11-10 16:47:57',150,4,'Base Documental','ISOPROCED','iso/isoprocedures', 1);

-- id;created_at;updated_at;author_id;application_id;module_id;name;code;details;status
-- 38;2017-11-10 16:46:48;2017-11-10 16:46:48;150;6;9;Base Documental;ISOPROCED;Base Documental;1
INSERT INTO security_permissions (created_at, updated_at, author_id, application_id, module_id, name, code, details, status)
  VALUES ('2017-11-10 16:46:48', '2017-11-10 16:46:48', 150, 4, 8, 'Base Documental', 'ISOPROCED', 'Base Documental', 1);

-- id;role_id;permission_id
-- 72;43;38

INSERT INTO security_permissions_by_role(role_id, permission_id) VALUES (43, 38);



-- id;created_at;updated_at;author_id;name;code;status
-- 43;2017-11-10 16:49:46;2017-11-10 16:49:47;150;ISO: Procedimientos ;ISOPROCED;1

INSERT INTO security_roles(created_at, updated_at, author_id, name, code, status)
VALUES ('2017-11-10 16:49:46', '2017-11-10 16:49:47', 150, 'ISO: Procedimientos',  'ISOPROCED',1);

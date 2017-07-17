CREATE VIEW CustomersInfo AS
SELECT c.rut AS RUT, c.bs_name AS RAZON_SOCIAL, c.name AS NOMBRE_FANTASIA, c.address AS DIRECCION, c.commune AS COMUNA, c.city AS CIUDAD, pho.phone1 AS TELEFONO1,
  pho.phone2 AS TELEFONO2, pho.phone3 AS TELEFONO3, typ.type AS CLASIFICACION, con.name AS NOMBRE, con.position AS CARGO, ema.email1 AS CORREO1, ema.email2 AS CORREO2,
  ema.email3 AS CORREO3, c.web AS WEB, man.description AS SEGUIMIENTO, man.created_at AS FECHA_GESTION, sta.name AS ESTATUS_GENERAL, det.name AS ESTATUS_DETALLADO,
  u.name AS VENDEDOR
FROM customers c
  JOIN contacts con ON con.customer_id = c.id
  JOIN phones pho ON pho.contact_id = con.id
  JOIN bstypes typ ON typ.id = c.bstype_id
  JOIN emails ema ON ema.contact_id = con.id
  JOIN managements man ON man.customer_id = c.id
  JOIN statuses_details det ON det.id = c.status_detail_id
  JOIN statuses sta ON sta.id = det.status_id
  JOIN users u ON u.id = c.user_id;

/*
*   Obtenemos los Usuarios con Role Tecnico y Que se encuentren Activos
*/
    SELECT id, name FROM security_users WHERE status = 1 AND id IN (
      select distinct(user_id) from security_vw_roles_by_user where role_id = 4
    )ORDER BY name;

/*
*  Usuarios Desarrollo
*/
SELECT DISTINCT (user_id)
FROM security_vw_roles_by_user WHERE role_id IN (57, 58);

SET @DATE_FROM = '2016-12-21 00:00:00';
SET @DATE_TO = '2017-01-20 23:59:59';
SET @AUTHOR_ID = 14;
SET @CC = 304;

/*
Total Acciones
 */
SELECT count(*) FROM cas_tickets_comments WHERE created_at BETWEEN @DATE_FROM AND @DATE_TO
AND author_id = @AUTHOR_ID
AND status = 1;

SELECT count(*) FROM cas_tickets_files WHERE created_at BETWEEN @DATE_FROM AND @DATE_TO
AND author_id = @AUTHOR_ID
AND status = 1;

SELECT count(*) FROM cas_tickets_histories WHERE created_at BETWEEN @DATE_FROM AND @DATE_TO
AND author_id = @AUTHOR_ID;

/*
Total Acciones Sin Centro de Costo
 */
SELECT count(*) FROM cas_tickets_comments comments
JOIN cas_tickets tickets ON tickets.id = comments.ticket_id
WHERE tickets.cost_center_id IS NOT NULL
AND comments.created_at BETWEEN @DATE_FROM AND @DATE_TO
AND comments.author_id = @AUTHOR_ID
AND comments.status = 1;

SELECT count(*) FROM cas_tickets_files files
JOIN cas_tickets tickets ON tickets.id = files.ticket_id
WHERE tickets.cost_center_id IS NOT NULL
AND files.created_at BETWEEN @DATE_FROM AND @DATE_TO
AND files.author_id = @AUTHOR_ID
AND files.status = 1;

SELECT count(*) FROM cas_tickets_histories files
JOIN cas_tickets tickets ON tickets.id = files.ticket_id
WHERE tickets.cost_center_id IS NOT NULL
AND files.created_at BETWEEN @DATE_FROM AND @DATE_TO
AND files.author_id = @AUTHOR_ID;


/*
Calculo de Horas Disponible
 */
SELECT ROUND(SUM(TIME_TO_SEC(worked_time) +
           TIME_TO_SEC(
               IF (
                   transport_going_time <> '838:59:59'
                   AND transport_going_time IS NOT NULL,
                   transport_going_time,
                   '00:00:00'
               )
           ) +
          TIME_TO_SEC(
              IF (
                  transport_arrival_time <> '-838:59:59'
                  AND transport_arrival_time IS NOT NULL,
                  transport_arrival_time,
                  '00:00:00'
              )
          )
       ), 1) / 3600 AS wt FROM cas_tickets_ballots
WHERE author_id = @AUTHOR_ID
      AND turn_start BETWEEN @DATE_FROM  AND @DATE_TO
      AND status = 1;


/*
Centro de Costo por Tecnico
 */
SELECT cost_center_id FROM cas_ticket_ballots WHERE author_id = @AUTHOR_ID
  AND created_at BETWEEN @DATE_FROM AND @DATE_TO;

SELECT cost_center_id FROM cas_tickets_comments comments
JOIN cas_tickets tickets ON tickets.id = comments.ticket_id
WHERE tickets.cost_center_id IS NOT NULL
AND comments.created_at BETWEEN @DATE_FROM AND @DATE_TO
AND comments.author_id = @AUTHOR_ID
AND comments.status = 1;

SELECT cost_center_id FROM cas_tickets_files files
JOIN cas_tickets tickets ON tickets.id = files.ticket_id
WHERE tickets.cost_center_id IS NOT NULL
AND files.created_at BETWEEN @DATE_FROM AND @DATE_TO
AND files.author_id = @AUTHOR_ID
AND files.status = 1;

SELECT cost_center_id FROM cas_tickets_histories files
JOIN cas_tickets tickets ON tickets.id = files.ticket_id
WHERE tickets.cost_center_id IS NOT NULL
AND files.created_at BETWEEN @DATE_FROM AND @DATE_TO
AND files.author_id = @AUTHOR_ID;



/*
Comentarios por Centro de Costo
*/
SELECT count(*) FROM blueisocial.cas_tickets_comments c
JOIN blueisocial.cas_tickets t ON t.id = c.ticket_id
  WHERE t.cost_center_id = @CC
  AND c.created_at BETWEEN @DATE_FROM AND @DATE_TO
  AND c.author_id = @AUTHOR_ID
  AND c.status = 1;

SELECT count(*) FROM blueisocial.cas_tickets_files c
JOIN blueisocial.cas_tickets t ON t.id = c.ticket_id
  WHERE t.cost_center_id = @CC
  AND c.created_at BETWEEN @DATE_FROM AND @DATE_TO
  AND c.author_id = @AUTHOR_ID
  AND c.status = 1;

SELECT count(*) FROM blueisocial.cas_tickets_histories c
JOIN blueisocial.cas_tickets t ON t.id = c.ticket_id
  WHERE t.cost_center_id = @CC
  AND c.created_at BETWEEN @DATE_FROM AND @DATE_TO
  AND c.author_id = @AUTHOR_ID;


/*
Boletas por Tecnico
 */
SELECT ROUND(SUM(TIME_TO_SEC(worked_time) +
           TIME_TO_SEC(
               IF (
                   transport_going_time <> '838:59:59'
                   AND transport_going_time IS NOT NULL,
                   transport_going_time,
                   '00:00:00'
               )
           ) +
          TIME_TO_SEC(
              IF (
                  transport_arrival_time <> '-838:59:59'
                  AND transport_arrival_time IS NOT NULL,
                  transport_arrival_time,
                  '00:00:00'
              )
          )
       ) / 3600, 1) AS wt FROM cas_tickets_ballots b
  INNER JOIN cas_tickets t ON t.id = b.ticket_id
WHERE b.author_id = @AUTHOR_ID
      AND b.turn_start BETWEEN @DATE_FROM  AND @DATE_TO
      AND b.status = 1
      AND t.cost_center_id = @CC;

SELECT ticket.id AS "Nº Ticket", company.name as Cliente, user.name AS "Técnico Responsable", grupo.name as "Tipo Requerimiento(Grupo)",
  requirement.name as "Tipo de Requerimiento(Clasificacion)", classification.name as 'Clasificacion',  ticket.created_at as "Fecha apertura TK",
  ticket.date_send_to_closedtechnical as "Fecha de envío a cierre",sla(ticket.created_at, ticket.date_send_to_closedtechnical) AS "Tiempo envio a cierre"
FROM blueisocial.cas_tickets as ticket
  JOIN core.companies company ON ticket.client_id = company.id
  JOIN security_users user ON ticket.technical_responsible_id = user.id
  JOIN cas_requirements_types requirement ON ticket.req_type_id = requirement.id
  JOIN cas_requirements_types_groups AS grupo ON requirement.group_id = grupo.id
  JOIN cas_requirements_classifications as classification ON ticket.classification_id = classification.id
WHERE ticket.created_at BETWEEN '2017-06-01' AND '2017-06-31'
ORDER BY ticket.id;
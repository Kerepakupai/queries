SELECT * FROM cas_tickets WHERE commercial_status = 'APPROVEDBUSINESS'
  AND date_closed_ticket BETWEEN '2017-07-17 00:00:00' AND '2017-07-17 23:59:59'
  AND technical_status = 'APPROVETECHNICALCLOSED';

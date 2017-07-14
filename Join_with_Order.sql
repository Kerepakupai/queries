SELECT * FROM customers c
  JOIN statuses_details d ON c.status_detail_id = d.id
WHERE c.next_mng <= now()
  AND c.status_detail_id in
      ( SELECT id FROM statuses_details as d WHERE priority IS NOT NULL)
  ORDER BY d.priority, c.next_mng ASC , c.last_mng DESC;
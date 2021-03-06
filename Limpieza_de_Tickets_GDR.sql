/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (30) *
  FROM [BoostCM].[GestionReclamos].[Tickets]
 ORDER BY created_at DESC;

 SELECT TOP (100) * 
 FROM Global.ReportProcessMonitor
 WHERE id = 117952;

 SELECT top(10) * 
 FROM System.ErrorLogs
 order by datetime DESC;
 

 SELECT DISTINCT(siebel_status)
  FROM [BoostCM].[GestionReclamos].[Tickets];


  DELETE FROM BoostCM.GestionReclamos.Tickets
  WHERE id NOT IN (SELECT TOP (20) id
  FROM [BoostCM].[GestionReclamos].[Tickets]
 ORDER BY created_at DESC);



 SELECT TOP (20) * 
 FROM BoostCM.GestionReclamos.Tickets_Activities;

 DELETE FROM BoostCM.GestionReclamos.Tickets_Activities
 WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
 );

 SELECT TOP(20) *
 FROM BoostCM.GestionReclamos.Tickets_Logs_Reopen;

 DELETE FROM BoostCM.GestionReclamos.Tickets_Logs_Reopen
 WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
 );



SELECT TOP(20) * 
FROM BoostCM.GestionReclamos.Tickets_Transactions;

DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);


SELECT TOP(20) * 
FROM BoostCM.GestionReclamos.Tickets_Transactions_Departure_trx;

DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions_Departure_trx
WHERE transaction_id IN (
	SELECT id FROM BoostCM.GestionReclamos.Tickets_Transactions
	WHERE ticket_id NOT IN (
		SELECT TOP (20) id
		FROM [BoostCM].[GestionReclamos].[Tickets]
		ORDER BY created_at DESC
	)
);

SELECT id FROM BoostCM.GestionReclamos.Tickets_Transactions
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

SELECT top(20) *
FROM BoostCM.GestionReclamos.Tickets_PaymentRegularizations;

DELETE FROM BoostCM.GestionReclamos.Tickets_PaymentRegularizations
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);


SELECT TOP(20) * 
FROM BoostCM.GestionReclamos.Tickets_Classification;

DELETE FROM BoostCM.GestionReclamos.Tickets_Classification
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

SELECT TOP(20) * 
FROM BoostCM.GestionReclamos.Tickets_PreviousTransactions;

DELETE FROM BoostCM.GestionReclamos.Tickets_PreviousTransactions
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);


SELECT TOP(20) *
FROM BoostCM.GestionReclamos.Tickets_Form_Ivr;

DELETE FROM BoostCM.GestionReclamos.Tickets_Form_Ivr
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);


DELETE FROM BoostCM.GestionReclamos.Tickets_Solved_Tivoli
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Destination_Letter
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Answers
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_Apelations
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);


DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_Cas
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_Gnd
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_Oc
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_Requirements
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_Tnr
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Assigned_WhatsApp
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Control_Approvals
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_RecoveryRegularizations
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Solved_Tivoli
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Stages
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Destination_Letter
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions_Departure
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions_Transfers
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);


DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions_Transfers_Payment
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Transactions_Transfers_Recovery
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Transfers
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Tickets_Versions
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.FormTnr
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Billing_Tickets_Validations
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Bodega_Masive_Load
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Bodega_Masive_Load_1
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Bodega_Masive_Load_Error
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Debito_Internacional
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.FormTnr
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.FormTnrInternet
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Logs_Casos_Cerrados_Negativos
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.Logs_Aprobacion_Control
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);

DELETE FROM BoostCM.GestionReclamos.TestProviderTicketsTest
WHERE ticket_id NOT IN (
	SELECT TOP (20) id
	FROM [BoostCM].[GestionReclamos].[Tickets]
	ORDER BY created_at DESC
);
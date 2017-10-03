/*
seguros vida security 
07-018


*/

/*
*	Obtener el ID de Usuario
*/
Select name, id from security_users
where name = 'David Fuentes Zambrano';

ID = 216

/*
*	Obtener ID de la Empresa
*/
select name, id from core.companies
where name like '%factoring%';

ID = 1516


/*
*	Obtenemos el ID del Centro de Costo
*/
Select * from core.cost_centers
where code = '07-018'
and status = 1
and deleted_at is null;

Select * from core.cost_centers
where name like '%Servicio%';

07-014 - GITBS - Venta de Equipos.  ==> 435

/* 
*	Insertar registro en la Base de Datos con los Valores Obtenidos
*/


INSERT INTO `core`.`companies_cost_centers`
(`id`, `created_at`, `updated_at`, `author_id`, `updater_id`, `company_id`, `cost_center_id`, `deleted_at`) 
VALUES
(null,
now(),
now(),
216,      -- Mi Usuario ID
null,
1572,     -- Company ID
309,      -- Centro de Costo ID
null);

-- Delete Centro de Costo
select * from core.companies_cost_centers where company_id = 1507;
select * from core.companies_cost_centers where id = 1507;

-- delete from core.companies_cost_centers where id = 879;


select * from `core`.`companies_cost_centers`
where company_id = 495;


/*
*	Obtener el ultimo registro Insertado
*/
select cost.created_at Creacion , user.name Autor, comp.name Compañia, cc.name CentroCosto, cc.code CodigoCC
from core.companies_cost_centers cost
	INNER JOIN security_users user ON
		user.id = cost.author_id
	INNER JOIN core.companies comp ON
		cost.company_id = comp.id
	INNER JOIN core.cost_centers cc ON
		cost.cost_center_id = cc.id
	
	order by cost.id DESC limit 1;
    
    
    
    select * from `core`.`companies_cost_centers` where company_id = 660;
    
    select * from core.companies where name like '%Mannk%';
    
    select * from core.companies where id = 7;
    
    select * from core.companies_relations;
    
    select * from core.cost_centers;


select cost.created_at Creacion , user.name Autor, comp.name Compañia, cc.name CentroCosto, cc.code CodigoCC
from core.companies_cost_centers cost
	LEFT JOIN security_users user ON
		user.id = cost.author_id
	LEFT JOIN core.companies comp ON
		cost.company_id = comp.id
	LEFT JOIN core.cost_centers cc ON
		cost.cost_center_id = cc.id
	where comp.id = 7
    
	order by cost.id DESC limit 1;
    
    
    
    
    select * from core.cost_centers_departments;
    
    select * from security_users where name like '%natalia%';
    
    select * from core.departments where id = 38;  -- Recursos Humanos 
    
    select * from core.cost_centers_departments dep
    JOIN core.cost_centers cc ON dep.cost_center_id = cc.id
    where dep.department_id = 38;
    
    
    select distinct(frecuency_type)  from blueisocial.kpi_customer_satisfaction
    
    -- Monthly
    -- Bimonthly
    -- Quarterly
    -- Biannual
    -- Annual
    
    
    -- mensual, bimensual, trimestral, cuatrimestral, semestral y anual
    
    -- 309 07-018
    select * from core.companies_cost_centers where company_id = 1528;  
    
    
    
    
    

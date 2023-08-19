SELECT *
FROM employees
;

SELECT
    first_name || ' ' || last_name as "Nombre empleado",
    COALESCE (TO_CHAR(manager_id),'no posee jefe')
FROM employees
WHERE manager_id IS NULL
OR manager_id IS NOT NULL
ORDER BY manager_id DESC
;
    

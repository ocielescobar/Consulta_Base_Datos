SELECT *
FROM empleado
;

--Caso 1

SELECT
    numrun_cli || '-' || dvrun_cli AS "Run Cliente",
    LOWER(pnombre_cli) || ' ' || INITCAP(snombre_cli) || ' ' || UPPER(appaterno_cli) || ' ' || UPPER(apmaterno_cli) AS "Nombre completo cliente",
    TO_CHAR(fecha_nac_cli, 'dd/mm/yyyy') AS "Fecha nacimiento"
FROM cliente
WHERE 
    EXTRACT(DAY FROM fecha_nac_cli) = 21
ORDER BY
    appaterno_cli ASC
;

--Caso 2

SELECT
    numrun_emp || '-' || dvrun_emp AS "Run Cliente",
    pnombre_emp || ' ' || snombre_emp || ' ' || appaterno_emp || ' ' || apmaterno_emp AS "Nombre completo cliente",
    sueldo_base AS "Sueldo Base",
    TRUNC(sueldo_base * 0.00001) AS "Porcentaje Movilizacion",
    ROUND(TRUNC(sueldo_base * 0.00001)/100 * sueldo_base) AS "Porcentaje Movilizacion"
FROM empleado
ORDER BY
    TRUNC(sueldo_base * 0.00001) DESC
;

--Caso3

SELECT
    numrun_emp || '-' || dvrun_emp AS "Run empleado", 
    pnombre_emp || ' ' || snombre_emp || ' ' || appaterno_emp || ' ' || apmaterno_emp AS "Nombre Completo Empleado",
    sueldo_base AS "Sueldo Base",
    TO_CHAR(fecha_nac, '   DD-MM-YYYY') AS "Fecha de Nacimiento",
    SUBSTR(pnombre_emp, 1,3) || '' || LENGTH(pnombre_emp) || '*' || SUBSTR(sueldo_base,-1,1) || '' || SUBSTR(dvrun_emp,1,1) || '' ||  (EXTRACT(YEAR FROM(SYSDATE)) - EXTRACT(YEAR FROM fecha_contrato)) AS "Nombre Usuario",
    SUBSTR(numrun_emp,3,1) || '' || EXTRACT(YEAR FROM fecha_contrato)+2 || '' || SUBSTR(sueldo_base,-3,3)-1 || '' || SUBSTR(appaterno_emp,-2,2) 
FROM empleado
;

--Caso 4

SELECT
    EXTRACT(YEAR FROM(SYSDATE)) AS "Año Proceso",
    nro_patente AS "Nro Patente",
    valor_arriendo_dia AS "Valor Arriendo Dia",
    (valor_arriendo_dia * EXTRACT(YEAR FROM(SYSDATE))-anio)/100  AS "Valor arriendo dia CR",
    EXTRACT(YEAR FROM(SYSDATE))-anio AS "Años de Antiguedad"
    
FROM camion
;

--Caso 5

SELECT
    EXTRACT(MONTH FROM fecha_ini_arriendo) ||'/'|| EXTRACT(YEAR FROM fecha_ini_arriendo) AS "Mes Año Proceso",
    nro_patente AS "Nro Patente",
    fecha_ini_arriendo AS "Fecha inicio de arriendo",
    dias_solicitados AS "Dias Solicitados",
    fecha_devolucion AS "Fecha Devolucion",
    fecha_devolucion - fecha_ini_arriendo AS "Dias de Atrasos",
    (fecha_devolucion - fecha_ini_arriendo) * 25500 AS "Valor Multa"
FROM arriendo_camion
WHERE
    EXTRACT(YEAR FROM fecha_ini_arriendo) = 2022
ORDER BY fecha_ini_arriendo ASC, Nro_patente ASC
;


    

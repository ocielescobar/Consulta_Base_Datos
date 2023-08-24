select *
from cliente;

SELECT
    pnombre_cli,
    UPPER(appaterno_cli),       -- Para pasar todo a mayuscula
    LOWER(direccion),           -- para pasar todo a minuscula
    INITCAP(direccion)          -- la primera letra mayuscula
FROM cliente
;

SELECT
    INITCAP(pnombre_cli),
    SUBSTR(pnombre_cli,3,1)    -- el 3 indica el inicio de la letra y el 1 la cantidad de letras que quiero mostrar (partiendo desde el 3)
FROM cliente                   -- con - 3 parte de la 3ra antes de la ultima luego avanza hacia la derecha 
;

SELECT
    appaterno_cli,
    TRIM('A' FROM appaterno_cli),    -- borra la primera y ultima letra ingresada si es que existiera al inicio o al fin
    REPLACE(appaterno_cli,'A','caca'),  -- reemplaza la letra ingresada por la palabra ingresada
    renta,
    ROUND(renta *5.0),                   --redondea a la cantidad ingresada
    TRUNC(renta * 5.5)                  -- corta los decimales
FROM cliente
;

SELECT
    fecha_nac_cli,
    TO_CHAR(fecha_nac_cli, 'DD/MM/YYYY'),
    TO_CHAR(fecha_nac_cli,'DAY "de" MONTH YEAR'),
    EXTRACT(DAY FROM fecha_nac_cli),        --Extrae el dia de la fecha
    EXTRACT(MONTH FROM fecha_nac_cli),      --Extrae el mes de la fecha
    EXTRACT(YEAR FROM fecha_nac_cli)        --Extrae el año de la fecha
FROM cliente
;


--fecha-fecha = numero de dias 
--fecha + numero = fecha
--fecha - numero = fecha


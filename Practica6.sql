USE Bar

--CONSULTAS BASICAS A TABLAS

SELECT * FROM VENTA

SELECT * FROM VENTA WHERE TOTAL <'1000';

SELECT * FROM COMPRA WHERE FECHA <= '18/02/2019';

SELECT * FROM COMPRA WHERE FECHA >= '03/03/2019';

SELECT * FROM BEBIDAS WHERE TIPO_BEBIDA = 'CERVEZA';

SELECT * FROM BEBIDAS WHERE TIPO_BEBIDA = 'REFRESCO';

SELECT * FROM EMPLEADOS WHERE PUESTO_EMPLEADO = 'MESERO';

SELECT * FROM EMPLEADOS WHERE PUESTO_EMPLEADO = 'BARTENDER';

SELECT * FROM ALIMENTOS WHERE TIPO_ALIMENTO = 'ENTRADA';

SELECT * FROM ALIMENTOS WHERE TIPO_ALIMENTO = 'COMIDA';


--REPORTES

SELECT MAX(TOTAL) AS MAYORVENTA, MIN(TOTAL) AS MENORVENTA FROM DETALLE_VENTA;

SELECT MAX(SUBTOTAL) AS MAYORCOMPRA, MIN(SUBTOTAL) AS MENORCOMPRA FROM COMPRA;

SELECT MAX(FECHA) AS ULTIMACOMPRA, MIN(FECHA) AS PRIMERACOMPRA FROM COMPRA;

SELECT COUNT(*) AS TOTALFILAS, SUM(TOTAL) AS VENTASTOTALES FROM VENTA;

SELECT COUNT(*) AS TOTALFILAS, SUM(TOTAL) AS VENTASTOTALES FROM VENTA ORDER BY TOTALFILAS;

SELECT ID_CLIENTE FROM VENTA WHERE TOTAL <= '1500' GROUP BY ID_CLIENTE;

SELECT MAX(PRECIO_COSTO) AS PRODUCTOMASCARO, MIN(PRECIO_COSTO) AS PRODUCTOMASBARATO FROM DETALLE_COMPRA;

SELECT COUNT(*) AS TOTALDEPROVEDORES FROM PROVEEDORES;

SELECT * FROM EMPLEADOS GROUP BY NOM_EMPLEADO;

SELECT COUNT(*) AS TOTALEMPLEADOS FROM EMPLEADOS GROUP BY NOM_EMPLEADO;
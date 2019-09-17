
/*****FUNCIONES*****/

CREATE OR REPLACE FUNCTION FN_FECHA_MAX(BANDERA NUMBER)
RETURN DATE
IS

    FN_FECHA DATE;

BEGIN

    IF (BANDERA = 1) THEN
        SELECT MAX(TRUNC(FECHA_INSERT_DW)) AS FECHA_MAX_LIBROS INTO FN_FECHA FROM TBL_LIBROS;
    ELSE
        IF (BANDERA = 2) THEN
            SELECT MAX(TRUNC(FECHA_INSERT_DW)) AS FECHA_MAX_SUCURSALES INTO FN_FECHA FROM TBL_SUCURSALES;
        ELSE
            IF (BANDERA = 3) THEN
                SELECT MAX(TRUNC(FECHA_INSERT_DW)) AS FECHA_MAX_EMPLEADOS INTO FN_FECHA FROM TBL_EMPLEADOS;
            ELSE
                IF(BANDERA = 4) THEN
                    SELECT MAX(TRUNC(FECHA_INSERT_DW)) AS FECHA_MAX_CATEGORIAS INTO FN_FECHA FROM TBL_CATEGORIAS;
                ELSE
                    IF(BANDERA = 5) THEN
                        SELECT MAX(TRUNC(FECHA_INSERT_DW)) AS FECHA_MAX_FACTURAS INTO FN_FECHA FROM TBL_TIEMPO;
                    ELSE
                        SELECT MAX(TRUNC(FECHA_INSERT_DW)) AS FECHA_MAX_HECHOS INTO FN_FECHA FROM TBL_HECHOS_LIBRO;
                    END IF;
                END IF;
            END IF;
        END IF;
    END IF;
    
    RETURN FN_FECHA;

END;

/*****PROCEDIMIENTOS*****/

CREATE OR REPLACE PROCEDURE PA_INSERT_LIBROS(
    P_IDLIB TBL_LIBROS.ID_LIBRO%TYPE,
    P_NOMBLIB TBL_LIBROS.NOMBRE_LIBRO%TYPE,
    P_FECHA TBL_LIBROS.FECHA_INSERT_DW %TYPE
)
IS

    PA_MAX_FECH1 DATE;

BEGIN

    PA_MAX_FECH1 := FN_FECHA_MAX(1);

    IF(P_FECHA < PA_MAX_FECH1) THEN

        INSERT INTO TBL_LIBROS VALUES(P_IDLIB, P_NOMBLIB, P_FECHA);
        COMMIT;

    END IF;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_SUCURSAL(
    P_IDSUCUR TBL_SUCURSALES.ID_SUCURSAL%TYPE,
    P_NOMBSUCUR TBL_SUCURSALES.NOMBRE_SUCURSAL%TYPE,
    P_DIR TBL_SUCURSALES.DIRECCION%TYPE,
    P_FECHA TBL_SUCURSALES.FECHA_INSERT_DW%TYPE
)
IS

    PA_MAX_FECH2 DATE;

BEGIN

    PA_MAX_FECH2 := FN_FECHA_MAX(2);

    IF(P_FECHA < PA_MAX_FECH2) THEN

        INSERT INTO TBL_SUCURSALES VALUES(P_IDSUCUR, P_NOMBSUCUR, P_DIR, P_FECHA);
        COMMIT;

    END IF;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_EMPLEADOS(
    P_IDEMP TBL_EMPLEADOS.ID_EMPLEADO%TYPE,
    P_NOMBEMP TBL_EMPLEADOS.NOMBRE_EMPLEADO%TYPE,
    P_FECHA TBL_EMPLEADOS.FECHA_INSERT_DW%TYPE
)
IS

    PA_MAX_FECH3 DATE;

BEGIN

    PA_MAX_FECH3 := FN_FECHA_MAX(3);

    IF(P_FECHA < PA_MAX_FECH3) THEN

        INSERT INTO TBL_EMPLEADOS VALUES(P_IDEMP, P_NOMBEMP, P_FECHA);
        COMMIT;

    END IF;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_CATEGORIAS(
    P_IDCAT TBL_CATEGORIAS.ID_CATEGORIA%TYPE,
    P_DESC TBL_CATEGORIAS.DESCRIPCION%TYPE,
    P_FECHA TBL_CATEGORIAS.FECHA_INSERT_DW%TYPE
)
IS

    PA_MAX_FECH4 DATE;

BEGIN

    PA_MAX_FECH4 := FN_FECHA_MAX(4);

    IF(P_FECHA < PA_MAX_FECH4) THEN

        INSERT INTO TBL_CATEGORIAS VALUES(P_IDCAT, P_DESC, P_FECHA);
        COMMIT;

    END IF;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_TIEMPO(
    P_COD TBL_TIEMPO.COD_REG_TIEMPO%TYPE,
    P_ANIO TBL_TIEMPO.ANIO%TYPE,
    P_MES TBL_TIEMPO.MES%TYPE,
    P_DIA TBL_TIEMPO.DIA%TYPE,
    P_FECHA TBL_TIEMPO.FECHA_INSERT_DW%TYPE
)
IS

    PA_MAX_FECH5 DATE;

BEGIN

    PA_MAX_FECH5 := FN_FECHA_MAX(5);

    IF(P_FECHA < PA_MAX_FECH5) THEN

        INSERT INTO TBL_TIEMPO VALUES(P_COD, P_ANIO, P_MES, P_DIA, P_FECHA);
        COMMIT;

    END IF;

END;


CREATE OR REPLACE PROCEDURE PA_INSERT_HECHOS(
    P_COD TBL_HECHOS_LIBRO.CODIGO_REGISTRO%TYPE,
    P_IDLIB TBL_LIBROS.ID_LIBRO%TYPE,
    P_IDCAT TBL_CATEGORIAS.ID_CATEGORIA%TYPE,
    P_IDSUCUR TBL_SUCURSALES.ID_SUCURSAL%TYPE,
    P_IDEMP TBL_EMPLEADOS.ID_EMPLEADO%TYPE,
    P_CODTIEMPO TBL_TIEMPO.COD_REG_TIEMPO%TYPE,
    P_VENTA TBL_HECHOS_LIBRO.VENTA_TOTAL%TYPE,
    P_PRESTADO TBL_HECHOS_LIBRO.NUM_VECES_PRESTADO%TYPE,
    P_FECHA TBL_HECHOS_LIBRO.FECHA_INSERT_DW%TYPE
)
IS

    PA_MAX_FECH6 DATE;

BEGIN

    PA_MAX_FECH6 := FN_FECHA_MAX(6);

    IF(P_FECHA < PA_MAX_FECH6) THEN

        INSERT INTO TBL_HECHOS_LIBRO VALUES(P_COD, P_IDLIB, P_IDCAT, P_IDSUCUR, P_IDEMP, P_CODTIEMPO, P_VENTA, P_PRESTADO, P_FECHA);
        COMMIT;

    END IF;

END;

--Procedimientos primera vez
CREATE OR REPLACE PROCEDURE PA_INSERT_LIB(
    P_IDLIB TBL_LIBROS.ID_LIBRO%TYPE,
    P_NOMBLIB TBL_LIBROS.NOMBRE_LIBRO%TYPE,
    P_FECHA TBL_LIBROS.FECHA_INSERT_DW %TYPE
)
IS
BEGIN

    INSERT INTO TBL_LIBROS VALUES(P_IDLIB, P_NOMBLIB, P_FECHA);
    COMMIT;

    EXCEPTION 
        WHEN OTHERS THEN
            ROLLBACK;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_SUCUR(
    P_IDSUCUR TBL_SUCURSALES.ID_SUCURSAL%TYPE,
    P_NOMBSUCUR TBL_SUCURSALES.NOMBRE_SUCURSAL%TYPE,
    P_DIR TBL_SUCURSALES.DIRECCION%TYPE,
    P_FECHA TBL_SUCURSALES.FECHA_INSERT_DW%TYPE
)
IS
BEGIN

    INSERT INTO TBL_SUCURSALES VALUES(P_IDSUCUR, P_NOMBSUCUR, P_DIR, P_FECHA);
    COMMIT;

    EXCEPTION 
        WHEN OTHERS THEN
            ROLLBACK;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_EMP(
    P_IDEMP TBL_EMPLEADOS.ID_EMPLEADO%TYPE,
    P_NOMBEMP TBL_EMPLEADOS.NOMBRE_EMPLEADO%TYPE,
    P_FECHA TBL_EMPLEADOS.FECHA_INSERT_DW%TYPE
)
IS
BEGIN

    INSERT INTO TBL_EMPLEADOS VALUES(P_IDEMP, P_NOMBEMP, P_FECHA);
    COMMIT;

    EXCEPTION 
        WHEN OTHERS THEN
            ROLLBACK;
    
END;

CREATE OR REPLACE PROCEDURE PA_INSERT_CAT(
    P_IDCAT TBL_CATEGORIAS.ID_CATEGORIA%TYPE,
    P_DESC TBL_CATEGORIAS.DESCRIPCION%TYPE,
    P_FECHA TBL_CATEGORIAS.FECHA_INSERT_DW%TYPE
)
IS
BEGIN

    INSERT INTO TBL_CATEGORIAS VALUES(P_IDCAT, P_DESC, P_FECHA);
    COMMIT;

    EXCEPTION 
        WHEN OTHERS THEN
            ROLLBACK;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_TIEM(
    P_COD TBL_TIEMPO.COD_REG_TIEMPO%TYPE,
    P_ANIO TBL_TIEMPO.ANIO%TYPE,
    P_MES TBL_TIEMPO.MES%TYPE,
    P_DIA TBL_TIEMPO.DIA%TYPE,
    P_FECHA TBL_TIEMPO.FECHA_INSERT_DW%TYPE
)
IS
BEGIN

    INSERT INTO TBL_TIEMPO VALUES(P_COD, P_ANIO, P_MES, P_DIA, P_FECHA);
    COMMIT;

    EXCEPTION 
        WHEN OTHERS THEN
            ROLLBACK;

END;

CREATE OR REPLACE PROCEDURE PA_INSERT_HECH(
    P_LIB TBL_HECHOS_LIBRO.ID_LIBRO%TYPE,
    P_CAT TBL_HECHOS_LIBRO.ID_CATEGORIA%TYPE,
    P_SUCUR TBL_HECHOS_LIBRO.ID_SUCURSAL%TYPE,
    P_EMP TBL_HECHOS_LIBRO.ID_EMPLEADO%TYPE,
    P_REG_TEMP TBL_HECHOS_LIBRO.COD_REG_TIEMPO%TYPE,
    P_VENT TBL_HECHOS_LIBRO.VENTA_TOTAL%TYPE,
    P_PREST TBL_HECHOS_LIBRO.NUM_VECES_PRESTADO%TYPE,
    P_FECHA TBL_HECHOS_LIBRO.FECHA_INSERT_DW%TYPE
)
IS
BEGIN

    INSERT INTO TBL_HECHOS_LIBRO VALUES (1,P_LIB,P_CAT,P_SUCUR,P_EMP,P_REG_TEMP,P_VENT,P_PREST,P_FECHA);
    COMMIT;

    EXCEPTION 
        WHEN OTHERS THEN
            ROLLBACK;

END;

CREATE SEQUENCE SQ_COD_HECHOS
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TG_SQ_COD_HECHOS
    BEFORE INSERT ON TBL_HECHOS_LIBRO
    FOR EACH ROW
DECLARE
BEGIN

    :NEW.CODIGO_REGISTRO := SQ_COD_HECHOS.NEXTVAL;

END;


--CONSULTAS PARA EL ETL:

/*****************************************/
SELECT FECHA_FACTURA AS COD_REG_TIEMPO,EXTRACT(YEAR FROM FECHA_FACTURA)AS ANIO,EXTRACT(MONTH FROM FECHA_FACTURA) AS MES,EXTRACT(DAY FROM FECHA_FACTURA) AS DIA,FECHA_INSERT FROM TBL_FACTURAS;

SELECT A.ID_EMPLEADO, CONCAT(B.NOMBRE, B.APELLIDO) AS NOMBRE_EMPLEADO, A.FECHA_INSERT FROM TBL_EMPLEADOS A LEFT JOIN TBL_PERSONAS B ON (A.ID_PERSONA = B.ID_PERSONA)

SELECT LIB.ID_LIBRO,
       CAT.ID_CATEGORIA,
       SUC.ID_SUCURSAL,
       EMP.ID_EMPLEADO,
       SUM(FAC.VENTA_TOTAL-(DESCU.PORCENTAJE_DESCUENTO*FAC.VENTA_TOTAL)) AS VENTA_TOTAL,
       COUNT(PL.ID_PRESTAMO) AS NUM_VECES_PRESTADO
       
FROM TBL_FACTURAS FAC
INNER JOIN TBL_DETALLE_FACTURAS DF ON FAC.ID_FACTURA = DF.ID_FACTURA
INNER JOIN TBL_DESCUENTOS DESCU ON DF.ID_DESCUENTO = DESCU.ID_DESCUENTO
INNER JOIN TBL_LIBROS LIB ON DF.ID_LIBRO = LIB.ID_LIBRO
INNER JOIN TBL_CATEGORIAS CAT ON LIB.ID_CATEGORIA = CAT.ID_CATEGORIA
INNER JOIN TBL_EMPLEADOS EMP ON FAC.ID_EMPLEADO = EMP.ID_EMPLEADO
INNER JOIN TBL_EMPLEADOS_X_SUCURSAL EXS ON EMP.ID_EMPLEADO = EXS.ID_EMPLEADO
INNER JOIN TBL_SUCURSALES SUC ON EXS.ID_SUCURSAL = SUC.ID_SUCURSAL
INNER JOIN TBL_PRESTAMOS_LIBRO PL ON FAC.ID_FACTURA = PL.ID_FACTURA

GROUP BY LIB.ID_LIBRO, CAT.ID_CATEGORIA, SUC.ID_SUCURSAL, EMP.ID_EMPLEADO;


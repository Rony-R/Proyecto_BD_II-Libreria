
CREATE TABLE tbl_categorias (
    id_categoria      INTEGER NOT NULL,
    descripcion       VARCHAR2(150) NOT NULL,
    fecha_insert_dw   DATE NOT NULL
);

ALTER TABLE tbl_categorias ADD CONSTRAINT tbl_categorias_pk PRIMARY KEY ( id_categoria );

CREATE TABLE tbl_empleados (
    id_empleado       INTEGER NOT NULL,
    nombre_empleado   VARCHAR2(200) NOT NULL,
    fecha_insert_dw   DATE NOT NULL
);

ALTER TABLE tbl_empleados ADD CONSTRAINT tbl_empleados_pk PRIMARY KEY ( id_empleado );

CREATE TABLE tbl_hechos_libro (
    codigo_registro      INTEGER NOT NULL,
    id_libro             INTEGER NOT NULL,
    id_categoria         INTEGER NOT NULL,
    id_sucursal          INTEGER NOT NULL,
    id_empleado          INTEGER NOT NULL,
    cod_reg_tiempo       DATE NOT NULL,
    venta_total          INTEGER NOT NULL,
    num_veces_prestado   INTEGER NOT NULL,
    fecha_insert_dw      DATE NOT NULL
);

ALTER TABLE tbl_hechos_libro ADD CONSTRAINT tbl_hechos_libro_pk PRIMARY KEY ( codigo_registro );

CREATE TABLE tbl_libros (
    id_libro          INTEGER NOT NULL,
    nombre_libro      VARCHAR2(100) NOT NULL,
    fecha_insert_dw   DATE NOT NULL
);

ALTER TABLE tbl_libros ADD CONSTRAINT tbl_libros_pk PRIMARY KEY ( id_libro );

CREATE TABLE tbl_sucursales (
    id_sucursal       INTEGER NOT NULL,
    nombre_sucursal   VARCHAR2(100) NOT NULL,
    direccion         VARCHAR2(150) NOT NULL,
    fecha_insert_dw   DATE NOT NULL
);

ALTER TABLE tbl_sucursales ADD CONSTRAINT tbl_sucursales_pk PRIMARY KEY ( id_sucursal );

CREATE TABLE tbl_tiempo (
    cod_reg_tiempo    DATE NOT NULL,
    anio              INTEGER NOT NULL,
    mes               INTEGER NOT NULL,
    dia               INTEGER NOT NULL,
    fecha_insert_dw   DATE
);

ALTER TABLE tbl_tiempo ADD CONSTRAINT tbl_tiempo_pk PRIMARY KEY ( cod_reg_tiempo );

ALTER TABLE tbl_hechos_libro
    ADD CONSTRAINT hec_lib_cat_fk FOREIGN KEY ( id_categoria )
        REFERENCES tbl_categorias ( id_categoria );

ALTER TABLE tbl_hechos_libro
    ADD CONSTRAINT hec_lib_emp_fk FOREIGN KEY ( id_empleado )
        REFERENCES tbl_empleados ( id_empleado );

ALTER TABLE tbl_hechos_libro
    ADD CONSTRAINT lib_mas_vend_lib_fk FOREIGN KEY ( id_libro )
        REFERENCES tbl_libros ( id_libro );

ALTER TABLE tbl_hechos_libro
    ADD CONSTRAINT lib_mas_vend_sucu_fk FOREIGN KEY ( id_sucursal )
        REFERENCES tbl_sucursales ( id_sucursal );

ALTER TABLE tbl_hechos_libro
    ADD CONSTRAINT lib_mas_vend_tiem_fk FOREIGN KEY ( cod_reg_tiempo )
        REFERENCES tbl_tiempo ( cod_reg_tiempo );
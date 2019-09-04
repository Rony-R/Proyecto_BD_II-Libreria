
CREATE TABLE tbl_autores (
    id_autor     INTEGER NOT NULL,
    id_persona   INTEGER NOT NULL
);

ALTER TABLE tbl_autores ADD CONSTRAINT tbl_autores_pk PRIMARY KEY ( id_autor );

CREATE TABLE tbl_bodegas (
    id_bodega       INTEGER NOT NULL,
    nombre_bodega   VARCHAR2(100) NOT NULL,
    direccion       VARCHAR2(150) NOT NULL,
    telefono        VARCHAR2(50) NOT NULL
);

ALTER TABLE tbl_bodegas ADD CONSTRAINT tbl_bodegas_pk PRIMARY KEY ( id_bodega );

CREATE TABLE tbl_cargos (
    id_cargo       INTEGER NOT NULL,
    nombre_cargo   VARCHAR2(100) NOT NULL
);

ALTER TABLE tbl_cargos ADD CONSTRAINT tbl_cargos_pk PRIMARY KEY ( id_cargo );

CREATE TABLE tbl_cargos_x_empleado (
    id_empleado          INTEGER NOT NULL,
    id_cargo             INTEGER NOT NULL,
    fecha_nombramiento   DATE NOT NULL,
    fecha_fin            DATE NOT NULL
);

CREATE TABLE tbl_categorias (
    id_categoria   INTEGER NOT NULL,
    descripcion    VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_categorias ADD CONSTRAINT tbl_categorias_pk PRIMARY KEY ( id_categoria );

CREATE TABLE tbl_cubiculos (
    id_cubiculo            INTEGER NOT NULL,
    id_estante             INTEGER NOT NULL,
    id_libro               INTEGER NOT NULL,
    descripcion_cubiculo   VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_cubiculos ADD CONSTRAINT tbl_cubiculos_pk PRIMARY KEY ( id_cubiculo );

CREATE TABLE tbl_descuentos (
    id_descuento           INTEGER NOT NULL,
    porcentaje_descuento   NUMBER(4, 2) NOT NULL,
    descripcion            VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_descuentos ADD CONSTRAINT tbl_descuentos_pk PRIMARY KEY ( id_descuento );

CREATE TABLE tbl_detalle_facturas (
    id_deta_factura   INTEGER NOT NULL,
    id_libro          INTEGER NOT NULL,
    id_factura        INTEGER NOT NULL,
    id_descuento      INTEGER,
    precio            NUMBER(6, 2)
);

ALTER TABLE tbl_detalle_facturas ADD CONSTRAINT tbl_detalle_facturas_pk PRIMARY KEY ( id_deta_factura );

CREATE TABLE tbl_editoriales (
    id_editorial       INTEGER NOT NULL,
    nombre_editorial   VARCHAR2(100) NOT NULL,
    telefono           VARCHAR2(50) NOT NULL,
    direccion          VARCHAR2(150) NOT NULL,
    correo             VARCHAR2(100)
);

ALTER TABLE tbl_editoriales ADD CONSTRAINT tbl_editoriales_pk PRIMARY KEY ( id_editorial );

CREATE TABLE tbl_empleados (
    id_empleado   INTEGER NOT NULL,
    id_persona    INTEGER NOT NULL,
    id_jefe       INTEGER
);

ALTER TABLE tbl_empleados ADD CONSTRAINT tbl_empleados_pk PRIMARY KEY ( id_empleado );

CREATE TABLE tbl_empleados_x_sucursal (
    id_empleado    INTEGER NOT NULL,
    id_sucursal    INTEGER NOT NULL,
    fecha_inicio   DATE NOT NULL,
    fecha_fin      DATE NOT NULL
);

CREATE TABLE tbl_estantes (
    id_estante            INTEGER NOT NULL,
    id_pasillo            INTEGER NOT NULL,
    descripcion_estante   VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_estantes ADD CONSTRAINT tbl_estantes_pk PRIMARY KEY ( id_estante );

CREATE TABLE tbl_facturas (
    id_factura            INTEGER NOT NULL,
    id_tipo_transaccion   INTEGER NOT NULL,
    id_empleado           INTEGER NOT NULL,
    id_tipo_pago          INTEGER NOT NULL,
    fecha_factura         DATE NOT NULL,
    venta_total           NUMBER(6, 2),
    impuesto              NUMBER(6, 2),
    total_a_pagar         NUMBER(6, 2),
    pago_cliente          INTEGER,
    cambio_cliente        NUMBER(6, 2)
);

ALTER TABLE tbl_facturas ADD CONSTRAINT tbl_facturas_pk PRIMARY KEY ( id_factura );

CREATE TABLE tbl_generos (
    id_genero       INTEGER NOT NULL,
    nombre_genero   VARCHAR2(100) NOT NULL
);

ALTER TABLE tbl_generos ADD CONSTRAINT tbl_generos_pk PRIMARY KEY ( id_genero );

CREATE TABLE tbl_generos_x_libro (
    id_libro    INTEGER NOT NULL,
    id_genero   INTEGER NOT NULL
);

ALTER TABLE tbl_generos_x_libro ADD CONSTRAINT tbl_generos_x_libro_pk PRIMARY KEY ( id_libro,
                                                                                    id_genero );

CREATE TABLE tbl_idiomas (
    id_idioma       INTEGER NOT NULL,
    nombre_idioma   VARCHAR2(100) NOT NULL
);

ALTER TABLE tbl_idiomas ADD CONSTRAINT tbl_idiomas_pk PRIMARY KEY ( id_idioma );

CREATE TABLE tbl_librerias (
    id_libreria       INTEGER NOT NULL,
    id_proveeedor     INTEGER NOT NULL,
    nombre_libreria   VARCHAR2(100) NOT NULL,
    direccion         VARCHAR2(150) NOT NULL,
    telefono          VARCHAR2(50) NOT NULL,
    rtn               VARCHAR2(100) NOT NULL
);

ALTER TABLE tbl_librerias ADD CONSTRAINT tbl_librerias_pk PRIMARY KEY ( id_libreria );

CREATE TABLE tbl_libros (
    id_libro            INTEGER NOT NULL,
    id_idioma           INTEGER NOT NULL,
    id_categoria        INTEGER NOT NULL,
    nombre_libro        VARCHAR2(100) NOT NULL,
    fecha_publicacion   DATE NOT NULL
);

ALTER TABLE tbl_libros ADD CONSTRAINT tbl_libros_pk PRIMARY KEY ( id_libro );

CREATE TABLE tbl_libros_x_autor (
    id_autor   INTEGER NOT NULL,
    id_libro   INTEGER NOT NULL
);

ALTER TABLE tbl_libros_x_autor ADD CONSTRAINT tbl_libros_x_autor_pk PRIMARY KEY ( id_autor,
                                                                                  id_libro );

CREATE TABLE tbl_libros_x_editorial (
    id_libro       INTEGER NOT NULL,
    id_editorial   INTEGER NOT NULL
);

ALTER TABLE tbl_libros_x_editorial ADD CONSTRAINT tbl_libros_x_editorial_pk PRIMARY KEY ( id_libro,
                                                                                          id_editorial );

CREATE TABLE tbl_mora (
    id_mora        INTEGER NOT NULL,
    id_prestamo    INTEGER NOT NULL,
    dias_retraso   INTEGER NOT NULL,
    monto_mora     INTEGER NOT NULL,
    descripcion    VARCHAR2(100) NOT NULL,
    tarifa_x_dia   INTEGER NOT NULL
);

ALTER TABLE tbl_mora ADD CONSTRAINT tbl_mora_pk PRIMARY KEY ( id_mora );

CREATE TABLE tbl_pagos (
    id_pago          INTEGER NOT NULL,
    id_tipo_pago     INTEGER NOT NULL,
    monto_pagar      INTEGER NOT NULL,
    fecha_pago       DATE NOT NULL,
    numero_tarjeta   VARCHAR2(50)
);

ALTER TABLE tbl_pagos ADD CONSTRAINT tbl_pagos_pk PRIMARY KEY ( id_pago );

CREATE TABLE tbl_pasillos (
    id_pasillo            INTEGER NOT NULL,
    id_bodega             INTEGER NOT NULL,
    descripcion_pasillo   VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_pasillos ADD CONSTRAINT tbl_pasillos_pk PRIMARY KEY ( id_pasillo );

CREATE TABLE tbl_personas (
    id_persona   INTEGER NOT NULL,
    nombre       VARCHAR2(100) NOT NULL,
    apellido     VARCHAR2(100) NOT NULL,
    correo       VARCHAR2(120),
    telefono     VARCHAR2(50)
);

ALTER TABLE tbl_personas ADD CONSTRAINT tbl_personas_pk PRIMARY KEY ( id_persona );

CREATE TABLE tbl_prestamos_libro (
    id_prestamo    INTEGER NOT NULL,
    id_factura     INTEGER NOT NULL,
    fecha_inicio   DATE NOT NULL,
    fecha_max      DATE NOT NULL
);

ALTER TABLE tbl_prestamos_libro ADD CONSTRAINT tbl_prestamos_pk PRIMARY KEY ( id_prestamo );

CREATE TABLE tbl_productos (
    id_producto       INTEGER NOT NULL,
    nombre_producto   VARCHAR2(100) NOT NULL
);

ALTER TABLE tbl_productos ADD CONSTRAINT tbl_productos_pk PRIMARY KEY ( id_producto );

CREATE TABLE tbl_productos_x_proveedor (
    id_producto     INTEGER NOT NULL,
    id_proveeedor   INTEGER NOT NULL,
    cantidad        INTEGER NOT NULL
);

ALTER TABLE tbl_productos_x_proveedor ADD CONSTRAINT tbl_productos_x_proveedor_pk PRIMARY KEY ( id_producto,
                                                                                                id_proveeedor );

CREATE TABLE tbl_proveedores (
    id_proveeedor      INTEGER NOT NULL,
    tipo_proveedor     INTEGER NOT NULL,
    nombre_proveedor   VARCHAR2(100) NOT NULL,
    telefono           VARCHAR2(50) NOT NULL,
    correo             VARCHAR2(100) NOT NULL,
    descripcion_prov   VARCHAR2(150)
);

ALTER TABLE tbl_proveedores ADD CONSTRAINT tbl_proveedores_pk PRIMARY KEY ( id_proveeedor );

CREATE TABLE tbl_sucursales (
    id_sucursal       INTEGER NOT NULL,
    id_libreria       INTEGER NOT NULL,
    id_bodega         INTEGER NOT NULL,
    nombre_sucursal   VARCHAR2(100) NOT NULL,
    direccion         VARCHAR2(150) NOT NULL,
    rtn               VARCHAR2(50) NOT NULL,
    telefono          VARCHAR2(50) NOT NULL
);

ALTER TABLE tbl_sucursales ADD CONSTRAINT tbl_sucursales_pk PRIMARY KEY ( id_sucursal );

ALTER TABLE tbl_sucursales ADD CONSTRAINT tbl_sucursales__un UNIQUE ( id_bodega );

CREATE TABLE tbl_tipo_pago (
    id_tipo_pago   INTEGER NOT NULL,
    descripcion    VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_tipo_pago ADD CONSTRAINT tbl_tipo_pago_pk PRIMARY KEY ( id_tipo_pago );

CREATE TABLE tbl_tipo_proveedor (
    id_tipo_proveedor   INTEGER NOT NULL,
    nombre_tipo_prov    VARCHAR2(150) NOT NULL
);

ALTER TABLE tbl_tipo_proveedor ADD CONSTRAINT tbl_tipo_proveedor_pk PRIMARY KEY ( id_tipo_proveedor );

CREATE TABLE tbl_tipo_transaccion (
    id_tipo_transaccion   INTEGER NOT NULL,
    descripcion           VARCHAR2(100) NOT NULL
);

ALTER TABLE tbl_tipo_transaccion ADD CONSTRAINT tbl_tipo_obtencion_pk PRIMARY KEY ( id_tipo_transaccion );

ALTER TABLE tbl_autores
    ADD CONSTRAINT aut_per_fk FOREIGN KEY ( id_persona )
        REFERENCES tbl_personas ( id_persona );

ALTER TABLE tbl_cargos_x_empleado
    ADD CONSTRAINT car_x_emp_car_fk FOREIGN KEY ( id_cargo )
        REFERENCES tbl_cargos ( id_cargo );

ALTER TABLE tbl_cargos_x_empleado
    ADD CONSTRAINT car_x_emp_emp_fk FOREIGN KEY ( id_empleado )
        REFERENCES tbl_empleados ( id_empleado );

ALTER TABLE tbl_cubiculos
    ADD CONSTRAINT cub_est_fk FOREIGN KEY ( id_estante )
        REFERENCES tbl_estantes ( id_estante );

ALTER TABLE tbl_cubiculos
    ADD CONSTRAINT cub_lib_fk FOREIGN KEY ( id_libro )
        REFERENCES tbl_libros ( id_libro );

ALTER TABLE tbl_detalle_facturas
    ADD CONSTRAINT det_fac_desc_fk FOREIGN KEY ( id_descuento )
        REFERENCES tbl_descuentos ( id_descuento );

ALTER TABLE tbl_detalle_facturas
    ADD CONSTRAINT det_fac_fac_fk FOREIGN KEY ( id_factura )
        REFERENCES tbl_facturas ( id_factura );

ALTER TABLE tbl_detalle_facturas
    ADD CONSTRAINT det_fac_lib_fk FOREIGN KEY ( id_libro )
        REFERENCES tbl_libros ( id_libro );

ALTER TABLE tbl_empleados
    ADD CONSTRAINT emp_emp_fk FOREIGN KEY ( id_jefe )
        REFERENCES tbl_empleados ( id_empleado );

ALTER TABLE tbl_empleados
    ADD CONSTRAINT emp_per_fk FOREIGN KEY ( id_persona )
        REFERENCES tbl_personas ( id_persona );

ALTER TABLE tbl_empleados_x_sucursal
    ADD CONSTRAINT emp_x_suc_emp_fk FOREIGN KEY ( id_empleado )
        REFERENCES tbl_empleados ( id_empleado );

ALTER TABLE tbl_empleados_x_sucursal
    ADD CONSTRAINT emp_x_suc_suc_fk FOREIGN KEY ( id_sucursal )
        REFERENCES tbl_sucursales ( id_sucursal );

ALTER TABLE tbl_estantes
    ADD CONSTRAINT est_pas_fk FOREIGN KEY ( id_pasillo )
        REFERENCES tbl_pasillos ( id_pasillo );

ALTER TABLE tbl_facturas
    ADD CONSTRAINT fac_emp_fk FOREIGN KEY ( id_empleado )
        REFERENCES tbl_empleados ( id_empleado );

ALTER TABLE tbl_facturas
    ADD CONSTRAINT fac_tipo_pago_fk FOREIGN KEY ( id_tipo_pago )
        REFERENCES tbl_tipo_pago ( id_tipo_pago );

ALTER TABLE tbl_facturas
    ADD CONSTRAINT fac_tipo_tran_fk FOREIGN KEY ( id_tipo_transaccion )
        REFERENCES tbl_tipo_transaccion ( id_tipo_transaccion );

ALTER TABLE tbl_generos_x_libro
    ADD CONSTRAINT gen_x_lib_gen_fk FOREIGN KEY ( id_genero )
        REFERENCES tbl_generos ( id_genero );

ALTER TABLE tbl_generos_x_libro
    ADD CONSTRAINT gen_x_lib_lib_fk FOREIGN KEY ( id_libro )
        REFERENCES tbl_libros ( id_libro );

ALTER TABLE tbl_libros
    ADD CONSTRAINT lib_cat_fk FOREIGN KEY ( id_categoria )
        REFERENCES tbl_categorias ( id_categoria );

ALTER TABLE tbl_libros
    ADD CONSTRAINT lib_idi_fk FOREIGN KEY ( id_idioma )
        REFERENCES tbl_idiomas ( id_idioma );

ALTER TABLE tbl_libros_x_autor
    ADD CONSTRAINT lib_x_aut_aut_fk FOREIGN KEY ( id_autor )
        REFERENCES tbl_autores ( id_autor );

ALTER TABLE tbl_libros_x_autor
    ADD CONSTRAINT lib_x_aut_lib_fk FOREIGN KEY ( id_libro )
        REFERENCES tbl_libros ( id_libro );

ALTER TABLE tbl_libros_x_editorial
    ADD CONSTRAINT lib_x_edi_edi_fk FOREIGN KEY ( id_editorial )
        REFERENCES tbl_editoriales ( id_editorial );

ALTER TABLE tbl_libros_x_editorial
    ADD CONSTRAINT lib_x_edi_lib_fk FOREIGN KEY ( id_libro )
        REFERENCES tbl_libros ( id_libro );

ALTER TABLE tbl_librerias
    ADD CONSTRAINT libr_prov_fk FOREIGN KEY ( id_proveeedor )
        REFERENCES tbl_proveedores ( id_proveeedor );

ALTER TABLE tbl_mora
    ADD CONSTRAINT mora_prest_libro_fk FOREIGN KEY ( id_prestamo )
        REFERENCES tbl_prestamos_libro ( id_prestamo );

ALTER TABLE tbl_pagos
    ADD CONSTRAINT pagos_tipo_pago_fk FOREIGN KEY ( id_tipo_pago )
        REFERENCES tbl_tipo_pago ( id_tipo_pago );

ALTER TABLE tbl_pasillos
    ADD CONSTRAINT pas_bod_fk FOREIGN KEY ( id_bodega )
        REFERENCES tbl_bodegas ( id_bodega );

ALTER TABLE tbl_prestamos_libro
    ADD CONSTRAINT prest_libro_fact_fk FOREIGN KEY ( id_factura )
        REFERENCES tbl_facturas ( id_factura );

ALTER TABLE tbl_productos_x_proveedor
    ADD CONSTRAINT prod_x_prov_pro_fk FOREIGN KEY ( id_producto )
        REFERENCES tbl_productos ( id_producto );

ALTER TABLE tbl_productos_x_proveedor
    ADD CONSTRAINT prod_x_prov_prov_fk FOREIGN KEY ( id_proveeedor )
        REFERENCES tbl_proveedores ( id_proveeedor );

ALTER TABLE tbl_proveedores
    ADD CONSTRAINT prov_tip_pro_fk FOREIGN KEY ( tipo_proveedor )
        REFERENCES tbl_tipo_proveedor ( id_tipo_proveedor );

ALTER TABLE tbl_sucursales
    ADD CONSTRAINT suc_bod_fk FOREIGN KEY ( id_bodega )
        REFERENCES tbl_bodegas ( id_bodega );

ALTER TABLE tbl_sucursales
    ADD CONSTRAINT suc_lib_fk FOREIGN KEY ( id_libreria )
        REFERENCES tbl_librerias ( id_libreria );
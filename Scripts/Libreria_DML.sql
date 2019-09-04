
INSERT INTO tbl_tipo_transaccion (descripcion) VALUES ('Compra');
INSERT INTO tbl_tipo_transaccion (descripcion) VALUES ('Prestamo');

--*********************************************************************************

INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Rony','Rodriguez','ronyrdz@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Maria','Perez','correo1@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Paco','Ramirez','correo2@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Ana','Thompson','correo3@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Raul','Valladares','correo4@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Paca','Anacleta','correo5@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Morgan','Freeman','correo6@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('David','Flores','correo7@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Angel','Bulnes','correo8@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Mario','Zavala','correo9@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Luis','Irias','correo10@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Lizzy','Rodriguez','correo11@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Sofia','Varela','correo12@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Pamela','Torres','correo13@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Genesis','Murcia','correo14@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Paola','Barahona','correo15@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Michell','Zavala','correo16@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Marcela','Santos','correo17@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Paulina','Vergara','correo18@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Miriam','Martinez','correo19@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Miguel','Barahona','correo20@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Elsa','Martinez','correo21@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Jose','Acevedo','correo22@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Bertha','Pacheco','correo23@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Maria','Gutierres','correo24@gmail.com','99998888');
INSERT INTO tbl_personas(nombre,apellido,correo,telefono) VALUES('Martha','Lainez','correo25@gmail.com','99998888');

--*********************************************************************************

INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Español');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Ingles');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Chino');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Frances');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Italiano');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Ruso');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Aleman');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Portuges');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Chino-Mandarin');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Belga');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Irani');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Arabe');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Latin');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Hbreo');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Japones');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Griego');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Musulman');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Austriaco');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Polaco');
INSERT INTO tbl_idiomas (nombre_idioma) VALUES('Noruego');

--*********************************************************************************

INSERT INTO tbl_categorias (descripcion) VALUES('Biografia');
INSERT INTO tbl_categorias (descripcion) VALUES('Cuentos');
INSERT INTO tbl_categorias (descripcion) VALUES('Novela');
INSERT INTO tbl_categorias (descripcion) VALUES('Documental');
INSERT INTO tbl_categorias (descripcion) VALUES('Comics');
INSERT INTO tbl_categorias (descripcion) VALUES('Enciclopedia');
INSERT INTO tbl_categorias (descripcion) VALUES('Diccionario');
INSERT INTO tbl_categorias (descripcion) VALUES('Atlas');
INSERT INTO tbl_categorias (descripcion) VALUES('Ortografia');
INSERT INTO tbl_categorias (descripcion) VALUES('Juegos');
INSERT INTO tbl_categorias (descripcion) VALUES('Medicina');
INSERT INTO tbl_categorias (descripcion) VALUES('Ingenieria');
INSERT INTO tbl_categorias (descripcion) VALUES('Informatica');
INSERT INTO tbl_categorias (descripcion) VALUES('Negocios');
INSERT INTO tbl_categorias (descripcion) VALUES('Estadisticos');
INSERT INTO tbl_categorias (descripcion) VALUES('Religion');
INSERT INTO tbl_categorias (descripcion) VALUES('Directorios');
INSERT INTO tbl_categorias (descripcion) VALUES('Acertijos');
INSERT INTO tbl_categorias (descripcion) VALUES('Trabalenguas');
INSERT INTO tbl_categorias (descripcion) VALUES('Chistes');

--*********************************************************************************

INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,1,'Libro 1',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,2,'Libro 2',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,3,'Libro 3',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,4,'Libro 4',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(5,5,'Libro 5',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,6,'Libro 6',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,7,'Libro 7',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,11,'Libro 8',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,12,'Libro 9',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,14,'Libro 10',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,16,'Libro 11',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,1,'Libro 12',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,3,'Libro 13',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,4,'Libro 14',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(5,2,'Libro 15',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,5,'Libro 16',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,16,'Libro 17',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,14,'Libro 18',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,14,'Libro 19',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,14,'Libro 20',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,1,'Libro 21',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,2,'Libro 22',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,3,'Libro 23',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,4,'Libro 24',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(5,5,'Libro 25',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,6,'Libro 26',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,7,'Libro 27',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,11,'Libro 28',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,12,'Libro 29',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,14,'Libro 30',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,16,'Libro 31',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,1,'Libro 32',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,3,'Libro 33',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,4,'Libro 34',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(5,2,'Libro 35',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,5,'Libro 36',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,16,'Libro 37',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,14,'Libro 38',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,14,'Libro 39',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,14,'Libro 40',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,14,'Libro 41',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,16,'Libro 42',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,1,'Libro 43',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(2,3,'Libro 44',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,4,'Libro 45',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(5,2,'Libro 46',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(4,5,'Libro 47',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,16,'Libro 48',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(3,14,'Libro 49',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(6,14,'Libro 50',SYSDATE+SQ_TEMP.NEXTVAL);
INSERT INTO tbl_libros (id_idioma,id_categoria,nombre_libro,fecha_publicacion)VALUES(1,14,'Libro 51',SYSDATE+SQ_TEMP.NEXTVAL);

--*********************************************************************************

INSERT INTO tbl_tipo_proveedor (id_tipo_proveedor,nombre_tipo_prov) VALUES (1,'Prov Productos Varios');
INSERT INTO tbl_tipo_proveedor (id_tipo_proveedor,nombre_tipo_prov) VALUES (2,'Prov Libros');

--*********************************************************************************

INSERT INTO tbl_proveedores (id_proveeedor,tipo_proveedor,nombre_proveedor,telefono,correo,descripcion_prov) VALUES(1,1,'Proveedor 1','98672323','correo.prov-1@gmail.com','desc prov 1');
INSERT INTO tbl_proveedores (id_proveeedor,tipo_proveedor,nombre_proveedor,telefono,correo,descripcion_prov) VALUES(2,1,'Proveedor 2','98672323','correo.prov-2@gmail.com','desc prov 2');
INSERT INTO tbl_proveedores (id_proveeedor,tipo_proveedor,nombre_proveedor,telefono,correo,descripcion_prov) VALUES(3,2,'Proveedor 3','98672323','correo.prov-3@gmail.com','desc prov 3');
INSERT INTO tbl_proveedores (id_proveeedor,tipo_proveedor,nombre_proveedor,telefono,correo,descripcion_prov) VALUES(4,2,'Proveedor 4','98672323','correo.prov-4@gmail.com','desc prov 4');
INSERT INTO tbl_proveedores (id_proveeedor,tipo_proveedor,nombre_proveedor,telefono,correo,descripcion_prov) VALUES(5,2,'Proveedor 5','98672323','correo.prov-5@gmail.com','desc prov 5');

--*********************************************************************************

INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (1,'Libreria La Amistad','wisconsin, Nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (1,'Libreria Los Hermanos','cuenca, España avenida, choki','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (1,'Libreria El Apoteosico','wisconsin, florida, avenida avemaria','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (2,'Libreria Los Pecuecos','minesota, san pedro, avenida el busito','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (2,'Libreria El Parquesito','el bronx, nevada, avenida aguila 1','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (3,'Libreria Las Hermanas','orlando, texas, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (3,'Libreria BVB Dortmund','los angeles, michigan, avenida espn','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (3,'Libreria Liverpool','liverpool, inglaterra, avenida champions','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (3,'Libreria Barcelona','tegucigalpa, Mexico df, avenida muerte','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (4,'Libreria Motagua','wisconsin, massachussets, avenida tango','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (5,'Libreria Boca Juniors','florida, nevada, avenida siempre viva','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (2,'Libreria Bayer Munich','la ceiba, costa rica, avenida maraton','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (3,'Libreria Man. City','la tigra, nevada, avenida guadalajara','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (4,'Libreria PSG','san francisco, Francisco Morazan, avenida tu casita','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (5,'Libreria Tu Hermana','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (2,'Libreria Windows','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (3,'Libreria MAC','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (2,'Libreria Linux','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (5,'Libreria Kubuntu','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);
INSERT INTO tbl_librerias (id_proveeedor,nombre_libreria,direccion,telefono,rtn) VALUES (5,'Libreria Debian','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL);

--*********************************************************************************

INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (1,'Bodega 1','Direccion Bodega 1','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (2,'Bodega 2','Direccion Bodega 2','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (3,'Bodega 3','Direccion Bodega 3','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (4,'Bodega 4','Direccion Bodega 4','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (5,'Bodega 5','Direccion Bodega 5','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (6,'Bodega 6','Direccion Bodega 6','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (7,'Bodega 7','Direccion Bodega 7','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (8,'Bodega 8','Direccion Bodega 8','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (9,'Bodega 9','Direccion Bodega 9','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (10,'Bodega 10','Direccion Bodega 10','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (11,'Bodega 11','Direccion Bodega 11','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (12,'Bodega 12','Direccion Bodega 12','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (13,'Bodega 13','Direccion Bodega 13','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (14,'Bodega 14','Direccion Bodega 14','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (15,'Bodega 15','Direccion Bodega 15','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (16,'Bodega 16','Direccion Bodega 16','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (17,'Bodega 17','Direccion Bodega 17','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (18,'Bodega 18','Direccion Bodega 18','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (19,'Bodega 19','Direccion Bodega 19','99998888');
INSERT INTO tbl_bodegas (id_bodega,nombre_bodega,direccion,telefono) VALUES (20,'Bodega 20','Direccion Bodega 20','99998888');

--*********************************************************************************

INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(2,1,'Sucursal 1','Direccion sucursal 1',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(2,2,'Sucursal 2','Direccion sucursal 2',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(3,3,'Sucursal 3','Direccion sucursal 3',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(4,4,'Sucursal 4','Direccion sucursal 4',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(5,5,'Sucursal 5','Direccion sucursal 5',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(6,6,'Sucursal 6','Direccion sucursal 6',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(7,7,'Sucursal 7','Direccion sucursal 7',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(8,8,'Sucursal 8','Direccion sucursal 8',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(9,9,'Sucursal 9','Direccion sucursal 9',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(10,10,'Sucursal 10','Direccion sucursal 10',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(13,11,'Sucursal 11','Direccion sucursal 11',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(13,12,'Sucursal 12','Direccion sucursal 12',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(13,13,'Sucursal 13','Direccion sucursal 13',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(2,14,'Sucursal 14','Direccion sucursal 14',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(2,15,'Sucursal 15','Direccion sucursal 15',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(3,16,'Sucursal 16','Direccion sucursal 16',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(3,17,'Sucursal 17','Direccion sucursal 17',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(3,18,'Sucursal 18','Direccion sucursal 18',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(4,19,'Sucursal 19','Direccion sucursal 19',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');
INSERT INTO tbl_sucursales (id_libreria,id_bodega,nombre_sucursal,direccion,rtn,telefono) VALUES(4,20,'Sucursal 20','Direccion sucursal 20',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516');

--*********************************************************************************

INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(1, NULL);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(2, NULL);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(3, NULL);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(4, NULL);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(5, NULL);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(6, 1);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(7, 1);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(8, 2);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(9, 3);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(10, 2);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(11, 2);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(12, 4);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(13, 4);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(14, 5);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(15, 1);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(16, 4);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(17, 3);
INSERT INTO tbl_empleados (id_persona,id_jefe) VALUES(18, 4);

--*********************************************************************************

INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(1,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(2,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(3,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(4,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(5,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(6,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(7,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(8,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(9,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(10,4,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(11,4,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(12,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(13,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(14,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(15,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(16,6,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(17,6,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal (id_empleado,id_sucursal,fecha_inicio,fecha_fin) VALUES(18,7,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);

--*********************************************************************************

INSERT INTO tbl_generos (nombre_genero) VALUES('Oda');
INSERT INTO tbl_generos (nombre_genero) VALUES('Himno');
INSERT INTO tbl_generos (nombre_genero) VALUES('Elegia');
INSERT INTO tbl_generos (nombre_genero) VALUES('Egloga');
INSERT INTO tbl_generos (nombre_genero) VALUES('Cancion');
INSERT INTO tbl_generos (nombre_genero) VALUES('Satira');
INSERT INTO tbl_generos (nombre_genero) VALUES('Terror');
INSERT INTO tbl_generos (nombre_genero) VALUES('Comedia');
INSERT INTO tbl_generos (nombre_genero) VALUES('Suspenso');
INSERT INTO tbl_generos (nombre_genero) VALUES('Trilogia');
INSERT INTO tbl_generos (nombre_genero) VALUES('Accion');
INSERT INTO tbl_generos (nombre_genero) VALUES('Romance');
INSERT INTO tbl_generos (nombre_genero) VALUES('Ciencia Ficcion');
INSERT INTO tbl_generos (nombre_genero) VALUES('Historia Antigua');
INSERT INTO tbl_generos (nombre_genero) VALUES('Fabula');
INSERT INTO tbl_generos (nombre_genero) VALUES('Epopeya');
INSERT INTO tbl_generos (nombre_genero) VALUES('Tragedia');
INSERT INTO tbl_generos (nombre_genero) VALUES('Crimenes');
INSERT INTO tbl_generos (nombre_genero) VALUES('Tragicomedia');
INSERT INTO tbl_generos (nombre_genero) VALUES('Melodrama');
INSERT INTO tbl_generos (nombre_genero) VALUES('Drama');
INSERT INTO tbl_generos (nombre_genero) VALUES('Espiritualismo');

--*********************************************************************************

INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(2,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(2,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(2,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(2,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(3,3);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(3,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(4,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(4,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(4,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(5,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(5,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(6,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(7,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(8,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(9,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(9,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(10,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(10,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(11,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(11,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(12,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(12,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(13,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(13,6);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(14,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(14,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(15,20);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(15,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(16,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(16,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(17,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(18,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(18,19);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(19,22);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(19,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(20,6);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(20,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(21,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(22,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(23,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(23,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(24,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(24,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(25,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(26,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(28,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(29,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(30,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(31,16);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(32,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(32,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(33,14);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(34,20);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(34,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(35,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(35,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(36,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(37,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(38,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(38,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(39,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(39,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(40,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(41,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(41,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(42,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(43,16);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(44,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(44,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(45,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(46,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(47,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(47,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(47,3);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(48,6);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(49,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(49,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(50,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(51,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(51,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(51,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(52,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(52,15);

--*********************************************************************************


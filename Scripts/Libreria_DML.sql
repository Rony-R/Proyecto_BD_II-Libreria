
/**IMPORTANTE!!!!!!!!*/
/*Antes de ejecutar los inserts crear estas secuencias: */

--Secuencias:
CREATE SEQUENCE SQ_COD1
START WITH 0801
INCREMENT BY 2;

CREATE SEQUENCE SQ_COD2
START WITH 1900
INCREMENT BY 3;

CREATE SEQUENCE SQ_COD3
START WITH 1
INCREMENT BY 123;

CREATE SEQUENCE SQ_TEMP
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE SQ_TEMP2 
START WITH 1
INCREMENT BY 3;

/*INSERTS: */

INSERT INTO tbl_tipo_transaccion VALUES (1,'Compra');
INSERT INTO tbl_tipo_transaccion VALUES (2,'Prestamo');

/**********************************************************************************/

INSERT INTO tbl_personas VALUES(1,'Rony','Rodriguez','ronyrdz@gmail.com','99998888',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(2,'Maria','Perez','correo1@gmail.com','99998888',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(3,'Paco','Ramirez','correo2@gmail.com','99998888',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(4,'Ana','Thompson','correo3@gmail.com','99998888',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(5,'Raul','Valladares','correo4@gmail.com','99998888',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(6,'Paca','Anacleta','correo5@gmail.com','99998888',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(7,'Morgan','Freeman','correo6@gmail.com','99998888',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(8,'David','Flores','correo7@gmail.com','99998888',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(9,'Angel','Bulnes','correo8@gmail.com','99998888',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(10,'Mario','Zavala','correo9@gmail.com','99998888',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(11,'Luis','Irias','correo10@gmail.com','99998888',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(12,'Lizzy','Rodriguez','correo11@gmail.com','99998888',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(13,'Sofia','Varela','correo12@gmail.com','99998888',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(14,'Pamela','Torres','correo13@gmail.com','99998888',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(15,'Genesis','Murcia','correo14@gmail.com','99998888',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(16,'Paola','Barahona','correo15@gmail.com','99998888',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(17,'Michell','Zavala','correo16@gmail.com','99998888',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(18,'Marcela','Santos','correo17@gmail.com','99998888',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(19,'Paulina','Vergara','correo18@gmail.com','99998888',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(20,'Miriam','Martinez','correo19@gmail.com','99998888',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(21,'Miguel','Barahona','correo20@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(22,'Elsa','Martinez','correo21@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(23,'Jose','Acevedo','correo22@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(24,'Bertha','Pacheco','correo23@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(25,'Maria','Gutierres','correo24@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(26,'Martha','Lainez','correo25@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(27,'Lucia','Leyer','correo26@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(28,'Esmeralda','Matinez','correo27@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(29,'Messi','Liones','correo28@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(30,'Cristiano','Ronaldo','correo29@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(31,'Marco','Reus','correo30@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));
INSERT INTO tbl_personas VALUES(32,'Eden','Hazard','correo31@gmail.com','99998888',to_date('30/1/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_idiomas VALUES(1,'Español');
INSERT INTO tbl_idiomas VALUES(2,'Ingles');
INSERT INTO tbl_idiomas VALUES(3,'Chino');
INSERT INTO tbl_idiomas VALUES(4,'Frances');
INSERT INTO tbl_idiomas VALUES(5,'Italiano');
INSERT INTO tbl_idiomas VALUES(6,'Ruso');
INSERT INTO tbl_idiomas VALUES(7,'Aleman');
INSERT INTO tbl_idiomas VALUES(8,'Portuges');
INSERT INTO tbl_idiomas VALUES(9,'Chino-Mandarin');
INSERT INTO tbl_idiomas VALUES(10,'Belga');
INSERT INTO tbl_idiomas VALUES(11,'Irani');
INSERT INTO tbl_idiomas VALUES(12,'Arabe');
INSERT INTO tbl_idiomas VALUES(13,'Latin');
INSERT INTO tbl_idiomas VALUES(14,'Hbreo');
INSERT INTO tbl_idiomas VALUES(15,'Japones');
INSERT INTO tbl_idiomas VALUES(16,'Griego');
INSERT INTO tbl_idiomas VALUES(17,'Musulman');
INSERT INTO tbl_idiomas VALUES(18,'Austriaco');
INSERT INTO tbl_idiomas VALUES(19,'Polaco');
INSERT INTO tbl_idiomas VALUES(20,'Noruego');

/**********************************************************************************/

INSERT INTO tbl_categorias VALUES(1,'Biografia',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(2,'Cuentos',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(3,'Novela',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(4,'Documental',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(5,'Comics',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(6,'Enciclopedia',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(7,'Diccionario',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(8,'Atlas',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(9,'Ortografia',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(10,'Juegos',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(11,'Medicina',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(12,'Ingenieria',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(13,'Informatica',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(14,'Negocios',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(15,'Estadisticos',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(16,'Religion',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(17,'Directorios',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(18,'Acertijos',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(19,'Trabalenguas',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_categorias VALUES(20,'Chistes',to_date('20/1/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_libros VALUES(1,1,1,'Libro 1',SYSDATE+SQ_TEMP.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(2,2,2,'Libro 2',SYSDATE+SQ_TEMP.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(3,3,3,'Libro 3',SYSDATE+SQ_TEMP.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(4,4,4,'Libro 4',SYSDATE+SQ_TEMP.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(5,5,5,'Libro 5',SYSDATE+SQ_TEMP.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(6,6,6,'Libro 6',SYSDATE+SQ_TEMP.NEXTVAL,to_date('3/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(7,1,7,'Libro 7',SYSDATE+SQ_TEMP.NEXTVAL,to_date('3/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(8,1,11,'Libro 8',SYSDATE+SQ_TEMP.NEXTVAL,to_date('3/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(9,2,12,'Libro 9',SYSDATE+SQ_TEMP.NEXTVAL,to_date('3/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(10,3,14,'Libro 10',SYSDATE+SQ_TEMP.NEXTVAL,to_date('3/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(11,4,16,'Libro 11',SYSDATE+SQ_TEMP.NEXTVAL,to_date('6/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(12,4,1,'Libro 12',SYSDATE+SQ_TEMP.NEXTVAL,to_date('6/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(13,2,3,'Libro 13',SYSDATE+SQ_TEMP.NEXTVAL,to_date('6/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(14,6,4,'Libro 14',SYSDATE+SQ_TEMP.NEXTVAL,to_date('6/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(15,5,2,'Libro 15',SYSDATE+SQ_TEMP.NEXTVAL,to_date('6/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(16,4,5,'Libro 16',SYSDATE+SQ_TEMP.NEXTVAL,to_date('9/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(17,3,16,'Libro 17',SYSDATE+SQ_TEMP.NEXTVAL,to_date('9/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(18,3,14,'Libro 18',SYSDATE+SQ_TEMP.NEXTVAL,to_date('9/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(19,6,14,'Libro 19',SYSDATE+SQ_TEMP.NEXTVAL,to_date('9/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(20,1,14,'Libro 20',SYSDATE+SQ_TEMP.NEXTVAL,to_date('9/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(21,1,1,'Libro 21',SYSDATE+SQ_TEMP.NEXTVAL,to_date('12/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(22,2,2,'Libro 22',SYSDATE+SQ_TEMP.NEXTVAL,to_date('12/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(23,3,3,'Libro 23',SYSDATE+SQ_TEMP.NEXTVAL,to_date('12/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(24,4,4,'Libro 24',SYSDATE+SQ_TEMP.NEXTVAL,to_date('12/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(25,5,5,'Libro 25',SYSDATE+SQ_TEMP.NEXTVAL,to_date('12/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(26,6,6,'Libro 26',SYSDATE+SQ_TEMP.NEXTVAL,to_date('15/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(27,1,7,'Libro 27',SYSDATE+SQ_TEMP.NEXTVAL,to_date('15/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(28,1,11,'Libro 28',SYSDATE+SQ_TEMP.NEXTVAL,to_date('15/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(29,2,12,'Libro 29',SYSDATE+SQ_TEMP.NEXTVAL,to_date('15/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(30,3,14,'Libro 30',SYSDATE+SQ_TEMP.NEXTVAL,to_date('15/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(31,4,16,'Libro 31',SYSDATE+SQ_TEMP.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(32,4,1,'Libro 32',SYSDATE+SQ_TEMP.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(33,2,3,'Libro 33',SYSDATE+SQ_TEMP.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(34,6,4,'Libro 34',SYSDATE+SQ_TEMP.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(35,5,2,'Libro 35',SYSDATE+SQ_TEMP.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(36,4,5,'Libro 36',SYSDATE+SQ_TEMP.NEXTVAL,to_date('23/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(37,3,16,'Libro 37',SYSDATE+SQ_TEMP.NEXTVAL,to_date('23/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(38,3,14,'Libro 38',SYSDATE+SQ_TEMP.NEXTVAL,to_date('23/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(39,6,14,'Libro 39',SYSDATE+SQ_TEMP.NEXTVAL,to_date('23/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(40,1,14,'Libro 40',SYSDATE+SQ_TEMP.NEXTVAL,to_date('23/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(41,3,14,'Libro 41',SYSDATE+SQ_TEMP.NEXTVAL,to_date('28/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(42,4,16,'Libro 42',SYSDATE+SQ_TEMP.NEXTVAL,to_date('28/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(43,4,1,'Libro 43',SYSDATE+SQ_TEMP.NEXTVAL,to_date('28/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(44,2,3,'Libro 44',SYSDATE+SQ_TEMP.NEXTVAL,to_date('28/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(45,6,4,'Libro 45',SYSDATE+SQ_TEMP.NEXTVAL,to_date('28/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(46,5,2,'Libro 46',SYSDATE+SQ_TEMP.NEXTVAL,to_date('31/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(47,4,5,'Libro 47',SYSDATE+SQ_TEMP.NEXTVAL,to_date('31/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(48,3,16,'Libro 48',SYSDATE+SQ_TEMP.NEXTVAL,to_date('31/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(49,3,14,'Libro 49',SYSDATE+SQ_TEMP.NEXTVAL,to_date('31/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(50,6,14,'Libro 50',SYSDATE+SQ_TEMP.NEXTVAL,to_date('31/1/19', 'dd/mm/yy'));
INSERT INTO tbl_libros VALUES(51,1,14,'Libro 51',SYSDATE+SQ_TEMP.NEXTVAL,to_date('31/1/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_tipo_proveedor VALUES (1,'Proveedor de Productos Varios');
INSERT INTO tbl_tipo_proveedor VALUES (2,'Proveedor de Libros');

/**********************************************************************************/

INSERT INTO tbl_proveedores VALUES(1,1,'Proveedor 1','98672323','correo.prov-1@gmail.com','desc prov 1');
INSERT INTO tbl_proveedores VALUES(2,1,'Proveedor 2','999945673','correo.prov-2@gmail.com','desc prov 2');
INSERT INTO tbl_proveedores VALUES(3,2,'Proveedor 3','94120143','correo.prov-3@gmail.com','desc prov 3');
INSERT INTO tbl_proveedores VALUES(4,2,'Proveedor 4','95678800','correo.prov-4@gmail.com','desc prov 4');
INSERT INTO tbl_proveedores VALUES(5,2,'Proveedor 5','95127011','correo.prov-5@gmail.com','desc prov 5');

/**********************************************************************************/

INSERT INTO tbl_librerias VALUES (1,1,'Libreria La Amistad','wisconsin, Nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (2,1,'Libreria Los Hermanos','cuenca, España avenida, choki','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (3,1,'Libreria El Apoteosico','wisconsin, florida, avenida avemaria','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (4,2,'Libreria Los Pecuecos','minesota, san pedro, avenida el busito','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (5,2,'Libreria El Parquesito','el bronx, nevada, avenida aguila 1','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (6,3,'Libreria Las Hermanas','orlando, texas, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (7,3,'Libreria BVB Dortmund','los angeles, michigan, avenida espn','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (8,3,'Libreria Liverpool','liverpool, inglaterra, avenida champions','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (9,3,'Libreria Barcelona','tegucigalpa, Mexico df, avenida muerte','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (10,4,'Libreria Motagua','wisconsin, massachussets, avenida tango','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (11,5,'Libreria Boca Juniors','florida, nevada, avenida siempre viva','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (12,2,'Libreria Bayer Munich','la ceiba, costa rica, avenida maraton','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (13,3,'Libreria Man. City','la tigra, nevada, avenida guadalajara','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (14,4,'Libreria PSG','san francisco, Francisco Morazan, avenida tu casita','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (15,5,'Libreria Tu Hermana','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (16,2,'Libreria Windows','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (17,3,'Libreria MAC','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (18,2,'Libreria Linux','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (19,5,'Libreria Kubuntu','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (20,5,'Libreria Debian','wisconsin, nevada, avenida foxtrot','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (21,5,'Libreria 21','direccion libreria 21, avenida foxtrot21','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (22,5,'Libreria 22','direccion libreria 22, avenida foxtrot22','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (23,5,'Libreria 23','direccion libreria 23, avenida foxtrot23','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (24,5,'Libreria 24','direccion libreria 24, avenida foxtrot24','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (25,5,'Libreria 25','direccion libreria 25, avenida foxtrot25','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (26,5,'Libreria 26','direccion libreria 26, avenida foxtrot26','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (27,5,'Libreria 27','direccion libreria 27, avenida foxtrot27','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (28,5,'Libreria 28','direccion libreria 28, avenida foxtrot28','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (29,5,'Libreria 29','direccion libreria 29, avenida foxtrot29','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_librerias VALUES (30,5,'Libreria 30','direccion libreria 30, avenida foxtrot30','97971234',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,to_date('20/1/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_bodegas VALUES (1,'Bodega 1','Direccion Bodega 1','99998888');
INSERT INTO tbl_bodegas VALUES (2,'Bodega 2','Direccion Bodega 2','99998888');
INSERT INTO tbl_bodegas VALUES (3,'Bodega 3','Direccion Bodega 3','99998888');
INSERT INTO tbl_bodegas VALUES (4,'Bodega 4','Direccion Bodega 4','99998888');
INSERT INTO tbl_bodegas VALUES (5,'Bodega 5','Direccion Bodega 5','99998888');
INSERT INTO tbl_bodegas VALUES (6,'Bodega 6','Direccion Bodega 6','99998888');
INSERT INTO tbl_bodegas VALUES (7,'Bodega 7','Direccion Bodega 7','99998888');
INSERT INTO tbl_bodegas VALUES (8,'Bodega 8','Direccion Bodega 8','99998888');
INSERT INTO tbl_bodegas VALUES (9,'Bodega 9','Direccion Bodega 9','99998888');
INSERT INTO tbl_bodegas VALUES (10,'Bodega 10','Direccion Bodega 10','99998888');
INSERT INTO tbl_bodegas VALUES (11,'Bodega 11','Direccion Bodega 11','99998888');
INSERT INTO tbl_bodegas VALUES (12,'Bodega 12','Direccion Bodega 12','99998888');
INSERT INTO tbl_bodegas VALUES (13,'Bodega 13','Direccion Bodega 13','99998888');
INSERT INTO tbl_bodegas VALUES (14,'Bodega 14','Direccion Bodega 14','99998888');
INSERT INTO tbl_bodegas VALUES (15,'Bodega 15','Direccion Bodega 15','99998888');
INSERT INTO tbl_bodegas VALUES (16,'Bodega 16','Direccion Bodega 16','99998888');
INSERT INTO tbl_bodegas VALUES (17,'Bodega 17','Direccion Bodega 17','99998888');
INSERT INTO tbl_bodegas VALUES (18,'Bodega 18','Direccion Bodega 18','99998888');
INSERT INTO tbl_bodegas VALUES (19,'Bodega 19','Direccion Bodega 19','99998888');
INSERT INTO tbl_bodegas VALUES (20,'Bodega 20','Direccion Bodega 20','99998888');
INSERT INTO tbl_bodegas VALUES (21,'Bodega 21','Direccion Bodega 21','99998888');
INSERT INTO tbl_bodegas VALUES (22,'Bodega 22','Direccion Bodega 22','99998888');
INSERT INTO tbl_bodegas VALUES (23,'Bodega 23','Direccion Bodega 23','99998888');
INSERT INTO tbl_bodegas VALUES (24,'Bodega 24','Direccion Bodega 24','99998888');
INSERT INTO tbl_bodegas VALUES (25,'Bodega 25','Direccion Bodega 25','99998888');
INSERT INTO tbl_bodegas VALUES (26,'Bodega 26','Direccion Bodega 26','99998888');
INSERT INTO tbl_bodegas VALUES (27,'Bodega 27','Direccion Bodega 27','99998888');
INSERT INTO tbl_bodegas VALUES (28,'Bodega 28','Direccion Bodega 28','99998888');
INSERT INTO tbl_bodegas VALUES (29,'Bodega 29','Direccion Bodega 29','99998888');
INSERT INTO tbl_bodegas VALUES (30,'Bodega 30','Direccion Bodega 30','99998888');

/**********************************************************************************/

INSERT INTO tbl_sucursales VALUES(1,1,1,'Sucursal 1','Direccion sucursal 1',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(2,2,2,'Sucursal 2','Direccion sucursal 2',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(3,3,3,'Sucursal 3','Direccion sucursal 3',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(4,4,4,'Sucursal 4','Direccion sucursal 4',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(5,5,5,'Sucursal 5','Direccion sucursal 5',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(6,6,6,'Sucursal 6','Direccion sucursal 6',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(7,7,7,'Sucursal 7','Direccion sucursal 7',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(8,8,8,'Sucursal 8','Direccion sucursal 8',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(9,9,9,'Sucursal 9','Direccion sucursal 9',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(10,10,10,'Sucursal 10','Direccion sucursal 10',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(11,11,11,'Sucursal 11','Direccion sucursal 11',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(12,12,12,'Sucursal 12','Direccion sucursal 12',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(13,13,13,'Sucursal 13','Direccion sucursal 13',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(14,14,14,'Sucursal 14','Direccion sucursal 14',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(15,15,15,'Sucursal 15','Direccion sucursal 15',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(16,15,16,'Sucursal 16','Direccion sucursal 16',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(17,16,17,'Sucursal 17','Direccion sucursal 17',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(18,17,18,'Sucursal 18','Direccion sucursal 18',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(19,18,19,'Sucursal 19','Direccion sucursal 19',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(20,20,20,'Sucursal 20','Direccion sucursal 20',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(21,1,21,'Sucursal 21','Direccion sucursal 21',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(22,2,22,'Sucursal 22','Direccion sucursal 22',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(23,3,23,'Sucursal 23','Direccion sucursal 23',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(24,4,24,'Sucursal 24','Direccion sucursal 24',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(25,5,25,'Sucursal 25','Direccion sucursal 25',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(26,1,26,'Sucursal 26','Direccion sucursal 26',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(27,2,27,'Sucursal 27','Direccion sucursal 27',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(28,3,28,'Sucursal 28','Direccion sucursal 28',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(29,4,29,'Sucursal 29','Direccion sucursal 29',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_sucursales VALUES(30,5,30,'Sucursal 30','Direccion sucursal 30',SQ_COD1.NEXTVAL||SQ_COD2.NEXTVAL||SQ_COD3.NEXTVAL,'98342516',to_date('1/1/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_empleados VALUES(1,1, NULL,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(2,2, NULL,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(3,3, NULL,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(4,4, NULL,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(5,5, NULL,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(6,6, 1,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(7,7, 1,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(8,8, 2,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(9,9, 3,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(10,10, 2,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(11,11, 2,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(12,12, 4,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(13,13, 4,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(14,14, 5,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(15,15, 1,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(16,16, 4,to_date('20/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(17,17, 3,to_date('20/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(18,18, 4,to_date('20/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(19,19, 7,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(20,20, 7,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(21,21, 7,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(22,22, 7,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(23,23, 7,to_date('1/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(24,24, 1,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(25,25, 1,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(26,26, 2,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(27,27, 3,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(28,28, 2,to_date('5/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(29,29, 2,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(30,30, 4,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(31,31, 4,to_date('10/2/19', 'dd/mm/yy'));
INSERT INTO tbl_empleados VALUES(32,32, 4,to_date('10/2/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_empleados_x_sucursal VALUES(1,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(2,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(3,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(4,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(5,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(6,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(7,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(8,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(9,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(10,4,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(11,4,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(12,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(13,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(14,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(15,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(16,6,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(17,6,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(18,7,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(19,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(20,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(21,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(22,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(23,2,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(24,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(25,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(26,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(27,3,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(28,4,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(29,4,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(30,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(31,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);
INSERT INTO tbl_empleados_x_sucursal VALUES(32,5,SYSDATE+SQ_TEMP.NEXTVAL,SYSDATE+SQ_TEMP2.NEXTVAL);

/**********************************************************************************/

INSERT INTO tbl_generos VALUES(1,'Oda', to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(2,'Himno', to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(3,'Elegia', to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(4,'Egloga', to_date('1/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(5,'Cancion', to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(6,'Satira', to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(7,'Terror', to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(8,'Comedia', to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(9,'Suspenso', to_date('5/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(10,'Trilogia', to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(11,'Accion', to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(12,'Romance', to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(13,'Ciencia Ficcion', to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(14,'Historia Antigua', to_date('10/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(15,'Fabula', to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(16,'Epopeya', to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(17,'Tragedia', to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(18,'Crimenes', to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(19,'Tragicomedia', to_date('20/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(20,'Melodrama', to_date('25/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(21,'Drama', to_date('25/1/19', 'dd/mm/yy'));
INSERT INTO tbl_generos VALUES(22,'Espiritualismo', to_date('25/1/19', 'dd/mm/yy'));

/**********************************************************************************/

INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(1,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(2,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(3,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(4,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(5,3);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(6,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(7,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(8,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(9,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(10,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(11,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(12,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(13,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(14,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(15,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(16,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(17,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(18,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(19,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(20,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(21,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(22,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(23,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(24,6);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(25,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(26,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(27,20);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(28,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(29,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(30,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(31,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(32,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(33,19);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(34,22);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(35,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(36,6);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(37,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(38,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(39,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(40,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(41,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(42,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(43,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(44,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(45,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(46,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(47,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(48,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(49,16);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(50,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(51,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(1,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(2,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(3,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(4,19);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(5,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(6,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(7,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(8,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(9,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(10,19);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(11,21);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(12,22);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(13,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(14,6);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(15,7);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(16,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(17,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(18,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(19,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(20,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(21,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(22,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(23,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(24,3);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(25,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(26,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(27,5);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(28,8);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(29,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(30,10);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(31,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(32,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(33,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(34,20);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(35,1);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(36,2);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(37,3);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(38,19);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(39,18);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(40,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(41,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(42,4);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(43,9);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(44,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(45,17);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(46,11);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(47,12);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(48,15);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(49,13);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(50,3);
INSERT INTO tbl_generos_x_libro (id_libro,id_genero) VALUES(51,1);


/**********************************************************************************/

INSERT INTO tbl_descuentos VALUES (1,0.4,'Descuento Tercera Edad');
INSERT INTO tbl_descuentos VALUES (2,0.2,'Descuento Niños');
INSERT INTO tbl_descuentos VALUES (3,0.3,'Descuento Cumpleañeros');
INSERT INTO tbl_descuentos VALUES (4,0.5,'Descuento Liquidacion');
INSERT INTO tbl_descuentos VALUES (5,0.8,'Descuento Cupon');
INSERT INTO tbl_descuentos VALUES (6,0.5,'Descuento por multiples productos');

/**********************************************************************************/

INSERT INTO tbl_tipo_pago VALUES (1,'Efectivo');
INSERT INTO tbl_tipo_pago VALUES (2,'Tarjeta');

/**********************************************************************************/

INSERT INTO TBL_FACTURAS VALUES (1,2,1,1,TO_DATE('17/09/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('17/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (2,2,1,1,TO_DATE('19/09/2019','DD/MM/YYYY'),400,15,415,500,85,TO_DATE('19/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (3,2,1,1,TO_DATE('01/10/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('01/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (4,1,2,1,TO_DATE('15/10/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('15/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (5,1,2,1,TO_DATE('10/11/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('10/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (6,1,2,1,TO_DATE('20/11/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('20/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (7,2,1,1,TO_DATE('01/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('01/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (8,2,1,1,TO_DATE('01/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('01/02/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (9,2,1,1,TO_DATE('02/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('02/03/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (10,1,1,1,TO_DATE('03/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('03/03/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (11,2,1,1,TO_DATE('04/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('04/03/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (12,2,1,1,TO_DATE('04/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('04/03/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (13,2,1,1,TO_DATE('04/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('04/03/2019','DD/MM/YYYY'));
INSERT INTO TBL_FACTURAS VALUES (14,2,1,1,TO_DATE('04/02/2019','DD/MM/YYYY'),200,15,215,300,85,TO_DATE('04/03/2019','DD/MM/YYYY'));


/**********************************************************************************/

INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (1,2,300,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698983664901176');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (2,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698982704901154');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (3,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698983664901218');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (4,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698982264901354');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (5,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698987304901504');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (6,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698988734901460');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (7,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698985164901556');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (8,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698988744901187');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (9,2,200,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698982084901782');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (10,2,250,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'4698987324901484');
INSERT INTO TBL_PAGOS (ID_PAGO,ID_TIPO_PAGO,MONTO_PAGAR,FECHA_PAGO,NUMERO_TARJETA) VALUES (11,2,250,TO_DATE('02/03/2019 22:05:01','DD/MM/YYYY hh24:mi:ss'),'5301653280701104');

/**********************************************************************************/

INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (1,1,TO_DATE('17/09/2019','DD/MM/YYYY'),TO_DATE('17/10/2019','DD/MM/YYYY'),TO_DATE('17/09/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (2,2,TO_DATE('19/09/2019','DD/MM/YYYY'),TO_DATE('19/10/2019','DD/MM/YYYY'),TO_DATE('19/09/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (3,3,TO_DATE('01/10/2019','DD/MM/YYYY'),TO_DATE('01/11/2019','DD/MM/YYYY'),TO_DATE('01/10/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (4,4,TO_DATE('01/12/2019','DD/MM/YYYY'),TO_DATE('01/01/2020','DD/MM/YYYY'),TO_DATE('01/12/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (5,5,TO_DATE('01/12/2019','DD/MM/YYYY'),TO_DATE('01/01/2020','DD/MM/YYYY'),TO_DATE('01/12/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (6,6,TO_DATE('02/12/2019','DD/MM/YYYY'),TO_DATE('02/01/2020','DD/MM/YYYY'),TO_DATE('02/12/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (7,7,TO_DATE('04/12/2019','DD/MM/YYYY'),TO_DATE('04/01/2020','DD/MM/YYYY'),TO_DATE('04/12/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (8,8,TO_DATE('04/12/2019','DD/MM/YYYY'),TO_DATE('04/01/2020','DD/MM/YYYY'),TO_DATE('04/12/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (9,9,TO_DATE('04/12/2019','DD/MM/YYYY'),TO_DATE('04/01/2020','DD/MM/YYYY'),TO_DATE('04/12/2019','DD/MM/YYYY'));
INSERT INTO TBL_PRESTAMOS_LIBRO VALUES (10,10,TO_DATE('04/12/2019','DD/MM/YYYY'),TO_DATE('04/01/2020','DD/MM/YYYY'),TO_DATE('04/12/2019','DD/MM/YYYY'));

/**********************************************************************************/

INSERT INTO TBL_DETALLE_FACTURAS VALUES (1,1,1,1,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (2,1,1,2,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (3,1,2,3,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (4,1,3,4,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (5,1,4,5,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (6,1,4,6,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (7,1,5,1,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (8,1,6,2,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (9,1,7,6,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (10,5,8,1,500);
INSERT INTO TBL_DETALLE_FACTURAS VALUES (11,5,9,2,500);


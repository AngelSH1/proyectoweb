/*Se crea la base de datos */
drop schema if exists proyectoweb;
drop user if exists usuario_proyecto;
CREATE SCHEMA proyectoweb ;

create user 'usuario_proyecto'@'%' identified by 'cliente_1';
grant all privileges on proyectoweb.* to 'usuario_proyecto'@'%';
flush privileges;
create table proyectoweb.categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(30) NOT NULL,
  ruta_imagen varchar(1024),
  activo bool,
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table proyectoweb.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  descripcion VARCHAR(100) NOT NULL,  
  detalle VARCHAR(1600) NOT NULL, 
  precio double,
  existencias int,  
  ruta_imagen varchar(1024),
  activo bool,
  PRIMARY KEY (id_producto),
  foreign key fk_producto_caregoria (id_categoria) references categoria(id_categoria)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

/*Se insertan 3 categorias de productos como ejemplo */
INSERT INTO proyectoweb.categoria (id_categoria,descripcion,ruta_imagen,activo) VALUES 
('1','Estetica', 'https://firebasestorage.googleapis.com/v0/b/techshop-ccca7.appspot.com/o/techshop%2Fcategoria%2Festetica.jpg?alt=media&token=1dff3604-d90f-4254-bbc0-f72ed2c3140f',   true), 
('2','Maquillaje',  'https://firebasestorage.googleapis.com/v0/b/techshop-ccca7.appspot.com/o/techshop%2Fcategoria%2Fmaquiellaje.jpg?alt=media&token=730f05ec-5d73-4a66-a918-09a066be2f81',   true),
('3','Peluqueria','https://firebasestorage.googleapis.com/v0/b/techshop-ccca7.appspot.com/o/techshop%2Fcategoria%2Fpelu.jpg?alt=media&token=e0911978-6b79-45e2-b552-a1810ce3da5f',true),
('4','Uñas','https://firebasestorage.googleapis.com/v0/b/techshop-ccca7.appspot.com/o/techshop%2Fcategoria%2Fu%C3%B1as7.jpg?alt=media&token=31aaf173-1271-4c00-af76-bc37fd7c1468',    false);

/*categoria 1*/
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'LOCION LIMPIADORA HIDRATA / MANOS', 'Estetica, Corporal, Crema, Locion, Emulsion, Gel Corporal', 39250.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/230001-27-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'EXFOLIANTE CORPORAL ARGAN OIL', 'Estetica, Corporal, Exfoliantes Corporal', 13100.00, 5, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/330709-7-430x458.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'GEL CRIOGENICO MODELADOR FUERTE', 'Estetica, Corporal, Crema, Locion, Emulsion, Gel Corporal', 51250.00, 15, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/595042-9-430x415.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'EMULSION PIEFRESCANTE & NUTRITIVA', 'Estetica, Corporal, Crema, Locion, Emulsion, Gel Corporal', 6788.00,10, 'https://supersalonenlinea.com/wp-content/uploads/2022/09/692003-1-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'MASCARILLA MANOS PIES REGENERATIVA', 'Estetica, Corporal, Crema, Locion, Emulsion, Gel Corporal', 10700.00,8, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/232070-24-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'LOCION CORPORAL ARGAN OIL', 'Estetica, Corporal, Crema, Locion, Emulsion, Gel Corporal', 10650.00,5,'https://supersalonenlinea.com/wp-content/uploads/2022/08/330710-7-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'ACEITE PARA MASAJE BCN', 'Masaje, Aceite de masaje, Estetica', 29350.00,10, 'https://supersalonenlinea.com/wp-content/uploads/2023/10/299626-3-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'ACEITE CORPORAL SECO ARGAN', 'Corporal, Aceite Corporal, Estetica', 10650.00, 20, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/330711-7-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'CREMA PARA MASAJE CORPORAL BCN', 'Masaje, Crema para masajes, Estetica', 17100.00,12, 'https://supersalonenlinea.com/wp-content/uploads/2023/10/299629-430x430.jpg', 1);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'EUCALYPTUS 100% PURE ESSENTIAL OIL', 'Estetica, Accesorios Estetica, Otros Accesorios Estetica', 7950.00,10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/299673-19-430x430.jpg', 1);
/*categoria 2*/
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'APLICADOR DE PESTAÑAS', 'Pestañas, Otros Pestañas, Maquillaje', 5100.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/322059-9-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'LAP DE CEJAS DARK BROWN PBL02', 'Maquillaje, Cejas, Lápiz Cejas', 8600.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/780302-1-430x449.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'MOSAIC POWDER SPICE', 'Maquillaje, Sombras', 11600.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/787131-1-430x449.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'LIP CREAM MATTE METALLIC RITZY LV16', 'Maquillaje, Labiales, Lipstick Liquido', 9300.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/787428-1-430x449.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'LAP LAB ANGELICA', 'Maquillaje, Labiales, Lipstick Barra', 8150.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/787749-1-430x449.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'BROCHA MAQ FLUFF', 'Maquillaje, Accesorios Maquillaje, Pinceles', 2250.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/990313-4-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (2, 'DETOX AND PROTECT FOUNDATION', 'Maquillaje, Base, Base Liquida', 21500.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2023/10/890113-430x430.jpg', true);
/*categoria 3*/
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'APM ROOT COLOR SPRAY RED COPPER', 'Tinte, Temporal / Fantasia Tinte, Peluqueria', 16100.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/411534-3-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'KERACOLOR 9.22 RUB CL CL NA', 'Tinte, Permanente Tinte, Peluqueria', 3950.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/650922-2-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'HIDRA WORKING GEL', 'Cuidado + Acabado Cabello, Cremas, Loción, Bálsamo, Espuma, Exfoliante Cabello, Peluqueria', 8250.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/803283-5-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'CEPILLO DESENREDANTE ACOLCHADO', 'Peluqueria, Accesorios Cabello, Cepillo Plano', 6600.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2023/03/812827-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'TKN SHAMPOO BODY MAKER', 'Peluqueria, Champu, Champu Todo Tipo de Cabello', 18600.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/044612-33-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'SHAMPOO LIQ S.SULF/MENTA', 'Peluqueria, Champu, Champu Todo Tipo de Cabello', 11960.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2023/07/754364-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'ARGAN OIL CONDITIONER', 'Peluqueria, Acondicionador, Acondicionador Todo Tipo de Cabello', 20650.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/299666-19-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'ACOND PRESERVACION DEL COLOR', 'Peluqueria, Acondicionador, Acondicionador Color', 16800.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/498325-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'CEP BLOMER PRO MIXTO PENACHO 9825', 'Peluqueria, Accesorios Cabello, Cepillo Redondo', 18900.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/729825-1-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'CEPILLO LIMPIEZA DE BOTELLAS', 'Tinte, Accesorios Tinte, Peluqueria', 11250.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/910204-4-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (3, 'SILK SYSTEM SHINE CONDITIONER', 'Peluqueria, Acondicionador, Acondicionador Todo Tipo de Cabello', 22400.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2023/09/627126-430x430.jpg', true);
/*categoria 4*/
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'ESMALTE UÑAS THUYA 146', 'Esmaltes, Esmalte Regular, Uñas', 4350.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/10/235146-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'ESMALTE THUYA DELUXE #12', 'Uñas, Esmalte Larga Duracion', 5600.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/234512-22-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'DUO IBD 165BG PLUM RAVEN 65535', 'Uñas, Accesorios Gel, Capa Superior Gel', 16950.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/671591-1-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'MASCARILLA DESPLEGABLE/TRAT UÑAS', 'Tratamientos, Fortalecedor Uñas, Uñas', 11150.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/677764-2-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'ESMALTE GEL ON-OFF PEACH PUFF', 'Uñas, Accesorios Gel, Esmalte Gel', 20500.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/236513-21-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'SPIDER GEL', 'Uñas, Accesorios Gel, Kits Uñas', 92700.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/235983-22-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, '80924 ESM UÑAS CHINA NAILS', 'Esmaltes, Esmalte Regular, Uñas', 3990.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/670924-2-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'JUST GEL POLISH SOLAR RAYS 56533', 'Uñas, Accesorios Gel, Esmalte Gel', 16950.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/671428-2-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, '81928 ESM UÑAS CHINA', 'Esmaltes, Esmalte Regular, Uñas', 3990.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/671928-1-430x430.jpg', true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (4, 'ESM ADVANCE 66621 SUNDANCE', 'Esmalte Larga Duracion, Uñas', 7450.00, 10, 'https://supersalonenlinea.com/wp-content/uploads/2022/07/678231-1-430x430.jpg', true);
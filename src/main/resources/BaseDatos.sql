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

INSERT INTO proyectoweb.producto (id_producto,id_categoria,descripcion,detalle,precio,existencias,ruta_imagen,activo) VALUES
(1,1,'Monitor AOC 19','Lorem ipsum dolor sit amet consectetur adipiscing elit iaculis, ullamcorper in fringilla eu cras tempor mi. Luctus blandit sapien mauris vestibulum consequat mattis taciti aliquam ullamcorper, sagittis suscipit etiam urna convallis interdum tempor bibendum, ultricies habitant viverra natoque dictum posuere senectus volutpat. Cum ad vehicula condimentum nunc lacus nec tellus eleifend, a platea curae nullam sollicitudin nibh class cursus taciti, posuere purus inceptos facilisis cubilia suspendisse ut.',23000,5,'https://c.pxhere.com/images/ec/fd/d67b367ed6467eb826842ac81d3b-1453591.jpg!d',true),
(2,1,'Monitor MAC','Quisque in ridiculus scelerisque platea accumsan libero sem vel, mi cras metus cubilia tempor conubia fermentum volutpat gravida, maecenas semper sodales potenti turpis enim dapibus. Volutpat accumsan vivamus dignissim blandit vel eget posuere donec id, tempus sagittis aliquam erat luctus ornare aptent cubilia aliquet proin, ultrices ante pretium gravida sed vitae vestibulum aenean. Eleifend nascetur conubia ornare purus a eget at metus est risus natoque, elementum dis vulputate sociosqu integer ut ad nisl dui molestie.',27000,2,'https://c.pxhere.com/photos/17/77/Art_Calendar_Cc0_Creative_Design_High_Resolution_Mac_Stock-1622403.jpg!d',true),
(3,1,'Monitor Flex 21','Natoque lacinia accumsan hendrerit pretium sociis imperdiet a, nullam ornare erat suspendisse praesent porta, euismod in augue tempus aliquet habitasse. Non accumsan nostra cras vestibulum augue facilisi auctor scelerisque suscipit, iaculis maecenas varius sollicitudin lacus netus et ultricies tincidunt, tortor curabitur tempor diam aliquet dis platea integer. Potenti aliquet erat neque vitae et sociis pretium, viverra euismod vivamus scelerisque metus est feugiat curae, parturient auctor aliquam pharetra nam congue.',24000,5,'https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/09/LG-OLED-Flex-7-scaled.jpg',true),
(4,1,'Monitor Flex 36','Elementum sagittis dictumst leo curabitur porta, pellentesque interdum mauris class augue, penatibus vulputate dignissim lobortis, risus euismod ullamcorper ultrices. Hac suspendisse id odio tempus eleifend a malesuada, conubia gravida turpis auctor eget quam eu, fusce taciti lobortis sem netus cum. Etiam lacinia non nibh taciti vulputate ut nullam, curae mollis penatibus facilisi maecenas urna aptent, metus fusce felis magna ullamcorper aenean.',27600,2,'https://www.lg.com/us/images/tvs/md08003300/gallery/D-01.jpg',true),
(5,2,'Teclado español everex','Aenean senectus diam vitae curae habitant risus a et netus ante, sociis metus quisque euismod aptent etiam platea fringilla class vestibulum, dis habitasse facilisis fusce varius nam arcu blandit congue. Rutrum placerat congue etiam senectus tincidunt fringilla consequat dignissim sollicitudin, vulputate curae accumsan tempor nunc vel eros mus. Mauris donec urna ante proin duis nullam purus maecenas gravida curae iaculis, tempor quam massa cursus mollis per sodales eros diam leo.',45000,5,'https://http2.mlstatic.com/D_NQ_NP_984317-MLA43206062255_082020-O.webp',true),
(6,2,'Teclado fisico gamer','Auctor id morbi tempor litora fusce potenti, ornare integer imperdiet turpis accumsan enim, sagittis suscipit purus lacus nunc. Posuere tellus elementum imperdiet sollicitudin consequat torquent urna risus, pulvinar ac per quis egestas tristique ultricies, bibendum dignissim congue eu litora malesuada montes. Nisl arcu mi purus auctor nulla sodales torquent facilisis imperdiet, dignissim bibendum justo dictum in congue integer scelerisque sagittis, accumsan laoreet nam augue felis massa varius nostra.',57000,2,'https://psycatgames.com/magazine/party-games/gaming-trivia/feature-image_hu1c2b511a5a2ca80ffc557d83cb5157c1_380853_1200x1200_fill_q100_box_smart1.jpg',true),
(7,2,'Teclado usb compacto','Cum placerat etiam lobortis curabitur fames class facilisi hac duis, congue vulputate mus feugiat nostra imperdiet neque vehicula. Mi mollis ridiculus montes aenean sagittis vitae metus, netus massa ligula sociis magnis porttitor, torquent nisl eleifend lobortis dignissim at. Eget nostra tellus sagittis condimentum nec felis curabitur dis ad purus, montes dapibus ullamcorper cras vivamus facilisis nascetur lectus porttitor, dictum vulputate luctus pretium ligula eu posuere rhoncus molestie. Nibh platea odio at mollis est, turpis enim felis pharetra tellus placerat, facilisis praesent massa nulla. Accumsan curabitur cras mus turpis malesuada arcu aptent, volutpat praesent habitant senectus quis mollis sed, viverra nec proin nostra cubilia hendrerit.',25000,5,'https://live.staticflickr.com/7010/26783973491_3e2043edda_b.jpg',true),
(8,2,'Teclado Monitor Flex','Purus dictumst scelerisque mollis platea malesuada per vehicula lectus blandit sed, vulputate morbi imperdiet duis dapibus congue class accumsan nullam, ligula eleifend tincidunt urna mi condimentum dis posuere tellus. Sem rutrum erat mauris justo nunc odio condimentum in dictumst, cum porttitor lectus dignissim velit nulla gravida lobortis tempus vehicula, pharetra urna ullamcorper metus semper volutpat proin senectus. Aliquam donec cras ante hendrerit enim vitae nostra consequat scelerisque a habitant dictum congue ornare potenti, sodales velit litora suspendisse nullam neque pellentesque dui etiam platea imperdiet pretium luctus.',27600,2,'https://hardzone.es/app/uploads-hardzone.es/2020/10/Mejores-KVM.jpg',true),
(9,3,'CPU Intel 7i','Morbi egestas sociis magnis curabitur suscipit nostra blandit magna torquent convallis, enim parturient feugiat fringilla litora aliquam turpis nisl at velit, fames aenean dui viverra arcu habitasse nascetur platea ac. Lectus nibh imperdiet nascetur proin potenti nisl mattis fringilla urna consequat diam, pellentesque vulputate magnis ridiculus dignissim nec venenatis primis ut bibendum, penatibus himenaeos mus sapien magna etiam velit justo vivamus metus. Tellus volutpat hendrerit vehicula lacinia aliquam euismod lectus erat posuere, arcu nec morbi dui placerat quisque semper tempor vulputate est, turpis ac dis nostra congue odio per mattis.',15780,5,'https://live.staticflickr.com/7391/9662276651_f4aa27d5ca_b.jpg',true),
(10,3,'CPU Intel Core 5i','Rhoncus ante magna cursus consequat proin senectus ridiculus, varius maecenas tellus justo facilisi ligula eros dapibus, taciti sollicitudin vulputate vivamus lacus fusce. Lacus aptent facilisi urna volutpat vestibulum nunc sociis viverra habitasse egestas, vivamus blandit ultricies neque netus pulvinar elementum ac per iaculis, donec euismod porttitor velit diam ullamcorper congue phasellus nam. Feugiat senectus parturient tristique enim ac integer torquent rutrum imperdiet, nec dapibus nam vestibulum sodales phasellus dis egestas urna, donec interdum id dictumst mollis nostra felis euismod. Ornare proin diam lobortis enim maecenas tempus scelerisque nascetur, id quam magna fames vitae posuere luctus tempor, interdum mattis et ac sapien imperdiet ante.',15000,2,'https://live.staticflickr.com/1473/24714440462_31a0fcdfba_b.jpg',true),
(11,3,'AMD 7500','Primis quis sollicitudin ac himenaeos dui metus ridiculus, viverra vitae erat litora mauris eget, ut nisl platea feugiat inceptos cum. Diam vitae sem nulla commodo hendrerit duis dictum, tristique senectus maecenas eu augue dignissim lectus, eros cursus felis ornare nisl primis. Tempor facilisi ad scelerisque himenaeos nec ultrices interdum praesent, tincidunt mauris morbi nostra et parturient vivamus odio viverra, eget eu fermentum conubia vestibulum sagittis feugiat. Nulla mus dis rutrum feugiat imperdiet sociosqu non augue tempor sem, arcu natoque ridiculus odio dapibus quis ligula sagittis dui.',25400,5,'https://upload.wikimedia.org/wikipedia/commons/0/0c/AMD_Ryzen_9_3900X_-_ISO.jpg',true),
(12,3,'AMD 670','Risus tristique donec faucibus cursus dictumst vestibulum maecenas, ac scelerisque luctus purus senectus quisque pellentesque, dictum commodo accumsan himenaeos placerat suscipit. Pharetra erat cubilia sapien feugiat aenean molestie vulputate ac, lectus phasellus rutrum pretium interdum a natoque varius parturient, pulvinar condimentum praesent mollis ante nulla inceptos. Curabitur vestibulum malesuada justo non nostra nam donec dictum platea, commodo dictumst natoque bibendum leo nibh cras habitant primis, quisque augue eget ultrices pulvinar sodales odio rhoncus. Diam condimentum id pellentesque imperdiet porttitor vestibulum himenaeos iaculis, natoque ornare scelerisque nam nostra taciti tortor malesuada, sapien lacus cubilia suspendisse eros rutrum conubia.',45000,3,'https://upload.wikimedia.org/wikipedia/commons/a/a0/AMD_Duron_850_MHz_D850AUT1B.jpg',true),
(13,4,'Samsung S22','Nam ad hac curae mollis dui scelerisque convallis eros, dignissim faucibus velit nostra dapibus cursus vehicula habitasse facilisi, mi conubia pellentesque quisque cras justo inceptos. Integer varius consequat volutpat at dui scelerisque dapibus magnis platea quis, purus mi nibh tempor inceptos litora hac himenaeos ultrices. Convallis orci dictumst tincidunt phasellus facilisis ullamcorper montes vestibulum, leo cubilia tempus fringilla sodales per lacus viverra pretium, potenti id sociis fames curae nam etiam.',285000,0,'https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/08/S22-app-drawer-scaled.jpg',true),
(14,4,'Motorola X23','Luctus lacus montes vulputate libero purus est litora, risus magnis quisque ac urna magna sollicitudin, suspendisse mauris massa euismod quam placerat. Facilisis congue id posuere tortor et porttitor curabitur pulvinar sapien, cubilia tempus pharetra facilisi fringilla dapibus lectus non hendrerit, pellentesque dictumst vulputate natoque molestie aptent nascetur ante. Laoreet etiam taciti integer at metus facilisis, pellentesque tortor leo enim felis turpis bibendum, neque curabitur himenaeos hac torquent.',154000,0,'https://www.trustedreviews.com/wp-content/uploads/sites/54/2021/10/motorola-2.jpg',true),
(15,4,'Nokia 5430','Nullam porttitor vivamus phasellus tempus in morbi aliquet platea duis, nulla tristique inceptos pellentesque pulvinar congue sagittis euismod vitae lacinia, scelerisque mus orci sociosqu libero proin sed felis. Pretium tincidunt ultrices eu vel nam massa morbi diam sem, neque aliquet vehicula penatibus odio phasellus curabitur. Conubia natoque quis tellus scelerisque sociis facilisi nisi suspendisse, id interdum ornare vivamus proin himenaeos class sed in, suscipit torquent est aliquam orci nunc etiam. Congue et nisl magna cum id sociis enim suscipit integer, nisi egestas est porttitor sollicitudin commodo natoque pharetra torquent, aliquam euismod nam porta rhoncus non ante habitasse.',330000,0,'https://www.trustedreviews.com/wp-content/uploads/sites/54/2021/08/nokia-xr20-1.jpg',true),
(16,4,'Xiami x45','Litora metus senectus mattis egestas mus fames tempus suscipit, inceptos luctus hendrerit congue quis sem. Potenti quis conubia fermentum non dictum nibh, viverra neque sed pretium eros aptent, metus hac at imperdiet est. Accumsan donec sociosqu etiam venenatis felis aenean suspendisse facilisi dignissim conubia non, molestie est ultrices neque id diam pellentesque quis quisque in odio, per nulla aptent arcu vehicula lobortis aliquet tempor cum platea.',273000,0,'https://www.trustedreviews.com/wp-content/uploads/sites/54/2022/03/20220315_104812-1-scaled.jpg',true);
INSERT INTO proyectoweb.producto (id_categoria, descripcion, detalle, precio, existencias, ruta_imagen, activo)
VALUES (1, 'LOCION LIMPIADORA HIDRATA / MANOS', '1000 ML', 39250.00, 100, 'https://supersalonenlinea.com/wp-content/uploads/2022/08/230001-27-430x430.jpg', 1);

CREATE TABLE proyectoweb.usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(512) NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  apellidos VARCHAR(30) NOT NULL,
  correo VARCHAR(25) NULL,
  telefono VARCHAR(15) NULL,
  ruta_imagen varchar(1024),
  activo boolean,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table proyectoweb.rol (
  id_rol INT NOT NULL AUTO_INCREMENT,
  nombre varchar(20),
  id_usuario int,
  PRIMARY KEY (id_rol),
  foreign key fk_rol_usuario (id_usuario) references usuario(id_usuario)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO proyectoweb.usuario (id_usuario, username,password,nombre, apellidos, correo, telefono,ruta_imagen,activo) VALUES 
(1,'pedro','$2a$10$koGR7eS22Pv5KdaVJKDcge04ZB53iMiw76.UjHPY.XyVYlYqXnPbO','Pedro', 'Mena Loria',     'lmena@gmail.com',      '7898-8936','https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Eduardo_de_Pedro_2019.jpg/480px-Eduardo_de_Pedro_2019.jpg?20200109230854',true);
insert into proyectoweb.rol (id_rol, nombre, id_usuario) values
 (1,'ROLE_USER',1);
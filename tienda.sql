DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE fabricante (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  codigo_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);
SELECT nombre from producto;
SELECT nombre, precio from producto;
SELECT * from producto;

Alter TABLE producto 
ADD column euros integer;

Alter table producto
ADD column	dólares integer; 

ALTER TABLE producto
Change nombre nombre_de_producto VARCHAR(100);

SELECT upper(nombre_de_producto) AS mayúscula, precio from producto; 

SELECT LOWER(nombre_de_producto) AS mayúscula, precio from producto;

Select CONCAT(UPPER(SUBSTRING(nombre,1,2)),LOWER(SUBSTRING(nombre,3))) AS nombre_mixto from fabricante;

select round(precio), nombre_de_producto from producto;

Select truncate(precio,0), nombre_de_producto from producto; 
select codigo_fabricante from producto
	join fabricante
	on codigo_fabricante = fabricante.codigo;

select DISTINCT codigo_fabricante from producto
	join fabricante
	on codigo_fabricante = fabricante.codigo;
    
    Select nombre from fabricante
    order by nombre asc;
    
    Select nombre from fabricante
    order by nombre desc;
    
    Select nombre_de_producto, precio from producto
    ORDER BY nombre_de_producto ASC, precio DESC;
    
    Select nombre from fabricante
    limit 5; 
    
    Select nombre from fabricante
    limit 2 offset 3;
    
    select nombre_de_producto, precio from producto
    order by precio asc limit 1;
    
    select nombre_de_producto, precio from producto
    order by precio desc limit 1;
    
    select nombre_de_producto, codigo_fabricante from producto
    where codigo_fabricante = 2;
    
    select nombre_de_producto, precio from producto
    where precio <=120;
    
    select nombre_de_producto, precio from producto
    where precio >=400;
    
    select nombre_de_producto, precio from producto
    where precio <400; 
    
    select nombre_de_producto, precio from producto
    where precio >80 and precio <300;  
    
	select nombre_de_producto, precio from producto
    where precio between 60 and 200;  
    
    select nombre_de_producto, precio, codigo_fabricante from producto
    where precio >200 and codigo_fabricante =6;
    
    select nombre_de_producto, codigo_fabricante from producto
    where codigo_fabricante =1 or codigo_fabricante =3 or codigo_fabricante =5; 
    
    select nombre_de_producto, precio *100 as céntimos from producto;
    
select nombre from fabricante
where nombre LIKE "S%"; 

select nombre from fabricante
where nombre LIKE "%e"; 

select nombre from fabricante
where nombre LIKE "%w%"; 

select nombre from fabricante
where char_length(nombre) = 4;   

select nombre_de_producto from producto
where nombre_de_producto LIKE "%Portátil%";

select nombre_de_producto, precio from producto
where nombre_de_producto LIKE "%Monitor%" and precio <215; 

select nombre_de_producto, precio from producto
where precio >=180
order by precio desc, nombre_de_producto asc;  
    
    
    











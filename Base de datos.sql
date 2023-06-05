/**********CREACION DE TABLAS *************/
/*crear tabla cliente*/
create table Cliente(
idcliente number,
nombres VARCHAR2(30),
direccion VARCHAR2(30),
telefono VARCHAR2(15),
ciudad VARCHAR2(20),
constraint pk_idecliente primary key(idcliente)
);

/*crear tabla venta*/
create table venta(
idventa number,
cantidad number,
idcliente number,
idproducto number,
constraint pk_idventas primary key(idventa),
constraint fk_idecliente foreign key (idcliente) references cliente(idcliente),
constraint fk_ideproducto foreign key(idproducto) references producto(idproducto)
);

/*crear tabla producto*/
create table Producto(
idproducto number,
descripcion varchar2(50),
precio number(3,2),
constraint pk_idproducto primary key(idproducto)
);
/*//////////////////////////////////////////////////////////////////////////////////*/
/*Realizar 20 sentencias Insert*/
/*llenar tabla producto*/
insert into Producto(idproducto,descripcion,precio)values(01,'AGUACATE',0.70);
insert into Producto(idproducto,descripcion,precio)values(02,'CAFE',0.40);
insert into Producto(idproducto,descripcion,precio)values(03,'PAPA',0.40);
insert into Producto(idproducto,descripcion,precio)values(04,'FIDEO LAZO',0.25);
insert into Producto(idproducto,descripcion,precio)values(05,'SALSA DE TOMATE',0.35);
insert into Producto(idproducto,descripcion,precio)values(06,'AZUCAR',0.35);
insert into Producto(idproducto,descripcion,precio)values(07,'DETERGENTE DEJA',1.00);
insert into Producto(idproducto,descripcion,precio)values(08,'GALLETA DE CHOCOLATE',0.20);
insert into Producto(idproducto,descripcion,precio)values(09,'SHAMPO',0.30);
insert into Producto(idproducto,descripcion,precio)values(010,'JABON ALEX',0.65);


/*llenar tabla cliente*/
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(1,'JUAN ZAPATA MIGUEL','GUASMO SUR','0943673374','GUAYAQUIL');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(2,'JUAN FERNANDO PÉREZ','LA FLORIDA','0987564859','GUAYAQUIL');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(3,'LUIS FERNANDO LOPEZ','EL FORTIN','0935648516','GUAYAQUIL');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(4,'ÓSCAR DE LA RENTA','LA ISLA JAMBELI','0931564215','MACHALA');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(5,'SARA TERESA SÁNCHEZ DEL PINAR','VINCES','0964587923','LOS RIOS');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(6,'EFRAÍN DE LAS CASAS MEJÍA','ENTRADA DE LA 8','0978956489','GUAYAQUIL');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(7,'','0964531789','LOS RIOS');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(8,'MARTÍN ELÍAS DE LOS RÍOS','SOCIO VIVIENDA 2','0998765483','GUAYAQUIL');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(9,'GABRIEL DE LA TORRE','SANTA ROSA','0968794351','MACHALA');
insert into Cliente(idcliente,nombres,direccion,telefono,ciudad)values(10,'SEBASTIÁN DEL CAMPO YEPES','SAUCES','0978349876','GUAYAQUIL');


/*llenar tabla venta*/
insert into venta(idventa,cantidad)values(001,51);
insert into venta(idventa,cantidad)values(002,86);
insert into venta(idventa,cantidad)values(003,9);
insert into venta(idventa,cantidad)values(004,16);
insert into venta(idventa,cantidad)values(005,32);
insert into venta(idventa,cantidad)values(006,32);
insert into venta(idventa,cantidad)values(007,22);
insert into venta(idventa,cantidad)values(008,51);
insert into venta(idventa,cantidad)values(009,31);
insert into venta(idventa,cantidad)values(0010,6);

/*//////////////////////////////////////////////////////////////////////////////////*/
/*Realizar 20 sentencias update*/
update Cliente
set nombres = 'juan';

UPDATE Cliente
set direccion = 'DESCONOCIDO'
where ciudad = 'LOS RIOS';

UPDATE Cliente
set direccion = 'VERGELES'
where ciudad = 'GUAYAQUIL';

UPDATE Cliente
set nombres = 'JUAN LUIS'
where telefono = '0987564859';

UPDATE Cliente
set direccion = 'PARQUE NACIONAL'
where ciudad = 'MACHALA';

UPDATE Cliente
set direccion = 'SIN TELEFONO'
where direccion = 'SOCIO VIVIENDA 2';

UPDATE Cliente
set nombres = 'SIN REGISTRO'
where telefono = '0964531789';

UPDATE Cliente
set ciudad = 'FUERA DEL PAIS'
where direccion = 'EL FORTIN';

UPDATE Cliente
set direccion ='SAUSES'
where idcliente in(1,6,3);

update Producto
set descripcion = 'PRODUCTO NO EXISTE'
where idproducto = 01; 

update Producto
set descripcion = 'FULL PRODUCTOS'
where idproducto = 05;

update Producto
set precio = 1.00
where  descripcion = 'CAFE'; 

update Producto
set idproducto = 0064
where descripcion = 'PAPA';

update Producto
set precio = 0.35
where descripcion = 'SHAMPO'; 

update Producto
set descripcion = 'AZUCAR'
where precio IN(0.35,0.40);

update venta
set cantidad = 0;

update venta
set cantidad = 10
where idventa in(002, 003, 009);

update venta
set cantidad = 1
where idventa =005
or idventa = 007;

update venta
set cantidad =0
where idventa = 001;

update venta
set idventa =567
where cantidad = 9;

/*//////////////////////////////////////////////////////////////////////////////////*/
/*Realizar 20  sentencias delete*/

Delete from Cliente
where nombres = 'JUAN ZAPATA MIGUEL';

Delete from Cliente
where ciudad = 'LOS RIOS';

Delete from Cliente
where nombres is null;

Delete from Cliente
where telefono = '0987564859'
or direccion ='VINCES';

Delete from Cliente
where idcliente not in (1,2,5)
or nombres is null;

Delete from Cliente
where telefono in('0968794351','0931564215');

Delete from Cliente
where nombres is not null;

Delete from Cliente
where idcliente = 1;

Delete from Cliente
where ciudad = 'LOS RIOS'
and nombres is null;

Delete from  Producto
where idproducto = 01; 

Delete from  Producto
where idproducto = 05
or idproducto = 10;

Delete from Producto
where  descripcion = 'CAFE'; 

Delete from Producto
where idproducto = 04
and descripcion = 'PAPA'
and precio = 0.40;

Delete from Producto
where precio = 0.35
or descripcion = 'JABON ALEX'; 

Delete from Producto
where precio IN(0.35,0.40);

Delete from Producto
where idproducto not IN(6,8,2);

Delete from venta
where idventa in(002, 003, 009);

Delete from venta
where idventa =005
or idventa = 007;

Delete from venta
where cantidad not in(32,22);

Delete from  venta
where cantidad = 9
and idventa = 3;

/*ver la tabla*/
select idcliente,ciudad,direccion from Cliente;
select idproducto, descripcion, precio from Producto;

create database dbuniversidad

--Esto es solo prueba

--use dbuniversidad

go

create table carrera
(
codigo int not null primary key,
nombre varchar(30) not null,
detalle varchar(100) not null
)
go
create table materia
(
sigla varchar(30) not null primary key,
nombre varchar(30) not null,
detalle varchar(100) not null
)
go
create table estudiante
(
codigo int not null primary key,
nombre varchar(30) not null,
paterno varchar(30) not null,
materno varchar(30) not null,
genero varchar (10) not null,
correo varchar(50) not null,
telefono int not null,
codigoc int not null foreign key references carrera(codigo)
)
go 
create table evaluacion
(
numero int not null primary key,  --1
nombre varchar(30) not null,  --segunda evaluacion
detalle varchar(100) not null, --puntaje maximo 15
puntaje int not null,   --15
sigla varchar(30) not null foreign key references materia(sigla)
)
go
create table detalleEvaluacion
(
codigo int not null foreign key references estudiante(codigo),
numero int not null foreign key references evaluacion(numero),
nota int not null,
primary key(codigo,numero)
)


insert into carrera values(1,'Ingenieria de Sistemas','Licenciatura')
insert into carrera values(2,'Ingenieria Industrial','Licenciatura')
insert into carrera values(3,'Ingenieria Comercial','Licenciatura')
insert into carrera values(4,'Comercio Exterior','Licenciatura')
insert into carrera values(5,'Ingenieria Electronica','Licenciatura')
insert into carrera values(6,'Ingenieria en Redes','Licenciatura')
insert into carrera values(7,'Administracion de Empresas','Licenciatura')
insert into carrera values(8,'Ingenieria Petrolera','Licenciatura')

insert into materia values('COM-100','Organizacion Personal','Sin Prerequisito')
insert into materia values('EXT-100','Elementos de Aritmetica','Sin Prerequisito')
insert into materia values('EXT-110','Elementos de Algebra','Prerequisito EXT-100')
insert into materia values('SIS-110','Introduccion a la Programacion','Sin Prerequisito')
insert into materia values('SIS-120','Progrmacion I','Prerequisito SIS-110')
insert into materia values('SIS-130','Progrmacion II','Prerequisito SIS-120')
insert into materia values('SIS-140','Progrmacion III','Prerequisito SIS-130')


insert into estudiante values(360812,'Eric','Escobar','Herrera','Masculino','ericaso_21@hotmail.com',3529563,1)
insert into estudiante values(360813,'Mariela','Zabala','Morales','Femenino','marielita_zm@hotmail.com',3528066,7)
insert into estudiante values(360814,'Yeilin','Rojas','Zalada','Femenino','yeilin_rz@hotmail.com',3538012,4)
insert into estudiante values(480848,'Victor','Flores','Terceros','Masculino','victor_elpotro@hotmail.com',3542244,2)
insert into estudiante values(480849,'Oscar','Valverde','Vargas','Masculino','oscar_arcoiris@hotmail.com',3596677,2)
insert into estudiante values(480850,'Jesus','Coronado','Arteaga','Masculino','jesusito_capullo@hotmail.com',3568877,8)

select * from evaluacion
select * from detalleEvaluacion

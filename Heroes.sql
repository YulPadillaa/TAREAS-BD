--Yul Padilla, tarea 2
--BD 
-- 188037
create table email(
	email_nombre varchar (500) not null,
	email_direccion varchar (500) not null
);

--para poder crearla le vamos a pedir a la funcion que por cada nombre y mail se forme un "usuario" dentro de la tabla (o sea una líena)
--Para hacer esto, simplemente le inidcamos que lo inserte dentro de la tabla que creamos en la parte de arriba
INSERT into email VALUES ('Wanda Maxinoff', 'wanda.maximoff@avengers.org');

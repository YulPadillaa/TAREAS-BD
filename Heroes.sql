--Yul Padilla, tarea 2
--BD 
-- 188037
create table avenger(
	avenger_nombre varchar (500) not null,
	avenger_direccion varchar (500) not null
);
--para poder crearla le vamos a pedir a la funcion que por cada nombre y mail se forme un "usuario" dentro de la tabla (o sea una líena)
--Para hacer esto, simplemente le inidcamos que lo inserte dentro de la tabla que creamos en la parte de arriba
INSERT into avenger
(avenger_nombre,avenger_direccion)
VALUES 
('Wanda Maxinoff', 'wanda.maximoff@avengers.org'),
('Pietro Maxinoff', 'pietro@mail.sokovia.ru'),
('Erik Lensherr', 'fuck_you_charles@brotherhood.of.evil.mutants.space'),
('Charles Xavier', 'i.am.secretely.filled.with.hubris@xavier-school-4-gifted-youngste.'),
('Steve Rogers', 'americas_ass@anti_avengers'),
('The Vision', 'vis@westview.sword.gov'),
('Clint Barton', 'bul@lse.ye'), 
('Natasja Romanov', 'blackwidow@kgb.ru'),
('Thor', 'god_of_thunder-^_^@royalty.asgard.gov'),
('Logan', 'wolverine@cyclops_is_a_jerk.com'),
('Ororo Monroe', 'ororo@weather.co'),
('Scott Summers', 'o@x')
('Nathan Summers', 'cable@xfact.or'),
('Groot', 'iamgroot@asgardiansofthegalaxyledbythor.quillsux'),
('Nebula', 'idonthaveelektras@complex.thanos'),
('Gamora', 'thefiercestwomaninthegalaxy@thanos.'),
('Rocket', 'shhhhhhhh@darknet.ru');

select a.avenger_nombre ,a.avenger_direccion 
from avenger a 
where a.avenger_direccion like '%.' or a.avenger_direccion not like '%@%.%' or a.avenger_direccion like '%^%';


CREATE TABLE IF NOT exists Usuarios(
ID integer primary key,
NAME varchar(120) not null,
LASTNAME varchar(120) not null,
PHONE varchar(30) not null,
STATUS boolean
);

CREATE table IF NOT exists Habilidades(
ID integer primary key,
NAME varchar(120) not null,
DESCRIPTION text not null,
USER_ID integer,
STATUS boolean,
foreign key (USER_ID) references Usuarios(ID)
);

CREATE TABLE IF NOT EXISTS Niveles(
ID integer primary key,
type varchar(120) not null,
STATUS boolean);

CREATE table IF NOT EXISTS Habilidades_niveles(
ID integer primary key,
HABILIDAD_ID integer not null,
NIVEL_ID integer not null,
foreign key (HABILIDAD_ID) references Habilidades(ID),
foreign key (NIVEL_ID) references Niveles(ID)
);
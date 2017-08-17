
--Usar na fase de teste

----------------------------------------------------------------------------------

drop table if exists admin;
drop table if exists torcedor;
drop table if exists partida;
drop table if exists competicao;
drop table if exists estadio;
drop table if exists time;


----------------------------------------------------------------------------------


-- Tabela administrador

create table Admin(

id_adm       varchar(12) not null,
nome         varchar(40) not null,
cpf          varchar(11) not null,
sexo        varchar(10) ,
datanasc     date        ,
email        varchar(40) not null,
senha        varchar(15) not null,


primary key (id_adm)

);

-- Tabela torcedor

create table Torcedor(

id_torcedor  varchar(12) not null,
nome         varchar(40) not null,
cpf          varchar(11) not null,
sexo        varchar(10) ,
datanasc     date        ,
telefone    varchar(11) ,
email        varchar(40) not null,
senha        varchar(15) not null,

id_partida   varchar(12) not null,

primary key (id_torcedor)

);

-- Tabela Partidas

create table Partida(

id_partida    varchar(12) not null,
estadio       varchar(40) not null,
data          date not null,

id_estadio      varchar(12) not null,
id_time        varchar(12) not null,
id_time2        varchar(12) not null,
id_competicao   varchar(12) not null,

primary key (id_partida)

);

-- Tabela Competiçao

create table Competicao(

id_competicao   varchar(12) not null,
nome            varchar(40) not null,

id_time       varchar(12) ,
id_partida    varchar(12) ,

primary key (id_competicao)

);

-- Tabela Estadio

create table Estadio(

id_estadio   varchar(12) not null,
nome         varchar(40) not null,
capacidade   varchar(40) not null,

primary key (id_estadio)

);

--Tabela Time

create table Time(

id_time   varchar(12) not null,
nome         varchar(40) not null,

primary key (id_time)

);

-------------------------------------------------------------------------------------------------------------------------------------------

-- Chaves Estrangeiras

alter table Torcedor add  foreign key (id_partida)          references Partida        (id_partida)          on update restrict on delete restrict;

alter table Partida add  foreign key (id_estadio)          references Estadio        (id_estadio)          on update restrict on delete restrict;

alter table Partida add  foreign key (id_time)          references Time       (id_time)          on update restrict on delete restrict;

alter table Partida add  foreign key (id_competicao)          references Competicao        (id_competicao)          on update restrict on delete restrict;

alter table Competicao add  foreign key (id_time)          references Time        (id_time)          on update restrict on delete restrict;

alter table Competicao add  foreign key (id_partida)          references Partida        (id_partida)          on update restrict on delete restrict;




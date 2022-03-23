create database gestaoescolar;
use gestaoescolar;

create table tb_escola(
	cd_escola int not null auto_increment primary key,
    nm_escola varchar(77) not null,
	ds_endereco varchar (77) not null,
	nr_telefone bigint not null,
	ds_horario varchar(30)
);

insert into tb_escola (nm_escola,ds_endereco,nr_telefone,ds_horario)
				values('Giovani','rua X',4734444444,'06:00 às 18:00');

select * from tb_escola;
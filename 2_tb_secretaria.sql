create table tb_secretaria(
	cd_secretaria int not null primary key,
	nm_secretaria varchar(45) not null,
	cd_escola int not null,
	foreign key(cd_escola) references tb_escola(cd_escola)
);  

insert into tb_secretaria (cd_secretaria,nm_secretaria,cd_escola)
				values(20,'Sandra',1);

select * from tb_secretaria;
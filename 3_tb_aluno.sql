create table tb_aluno (
	cd_matricula int not null primary key,
	cpf_aluno bigint not null,
	nm_aluno varchar(45) not null,
	serie_aluno varchar(15),
    cd_escola int not null,
	foreign key (cd_escola) references tb_escola(cd_escola)
);

insert into tb_aluno (cd_matricula,cpf_aluno,nm_aluno,serie_aluno,cd_escola)
					values(54321,22233343280,'Gabrielly','1 ano',1);

insert into tb_aluno (cd_matricula,cpf_aluno,nm_aluno,serie_aluno,cd_escola)
					values(12345,22244465490,'Bruno','1 ano',1);

insert into tb_aluno (cd_matricula,cpf_aluno,nm_aluno,serie_aluno,cd_escola)
					values(67890,33344478940,'Denise','1 ano',1);

insert into tb_aluno (cd_matricula,cpf_aluno,nm_aluno,serie_aluno,cd_escola)
					values(98766,33322290770,'Thaina','1 ano',1);

insert into tb_aluno (cd_matricula,cpf_aluno,nm_aluno,serie_aluno,cd_escola)
					values(43444,22244435650,'Ana','1 ano',1);

insert into tb_aluno (cd_matricula,cpf_aluno,nm_aluno,serie_aluno,cd_escola)
					values(54322,42223322530,'Thalita','1 ano',1);

select * from tb_aluno;
create table tb_funcionarios (
 cd_funcionario int not null primary key,
 cpf_funcionario bigint(11) unique not null,
 nm_funcionario varchar(45) not null,
 vl_salario decimal(8,2) not null,
 ds_turno varchar(20) not null,
 ds_cargo varchar(30) not null,
 cd_escola int not null,
 foreign key (cd_escola) references tb_escola(cd_escola)
);

insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(5434,33365422270,'Margarete',1700,'Comercial','Cozinheira',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(3423,44454399970,'Luiza',1800,'Matutino','Faxineira',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(8767,22234399910,'Gilberto',1500,'Comercial','Estoquista',1);

insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(9878,33345238850,'Fernanda',1400,'Comercial','Cantineira',1);

insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(4032,34454288830,'Anselmo',2300,'Noturno','Zelador',1);

insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(8765,55509322370,'Igor',1900,'Comercial','Informática',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(123,11122233343,'Silvana',2000,'30h','Professor de Geografia',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(456,22211133365,'Luis',2900,'50h','Professor de Matemática',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(789,44433311198,'Lizandre',3000,'60h','Professor de Português',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(987,44455533398,'Shayane',2000,'30h','Professor de Química',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(654,22299955589,'Mário',2600,'40h','Professor de Física',1);
                    
insert into tb_funcionarios (cd_funcionario,cpf_funcionario,nm_funcionario,vl_salario,ds_turno,ds_cargo,cd_escola)
					values(321,33344411160,'Jackson',1900,'20h','Professor de Biologia',1);
                    
select * from tb_funcionarios;
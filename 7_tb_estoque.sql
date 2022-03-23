create table tb_estoque (
 cd_produto int not null primary key,
 nm_produto varchar(45) not null,
 qt_produto int,
 cd_funcionario int,
 nm_funcionario varchar(45),
 cd_escola int not null,
 foreign key (cd_funcionario) references tb_funcionarios(cd_funcionario),
 foreign key (cd_escola) references tb_escola(cd_escola)
);

insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(5,'Livros',200,8767,'Gilberto',1);
                    
insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(4,'Alimentos',180,5434,'Margarete',1);

insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(8,'Produtos de Limpeza',100,3423,'Luiza',1);

insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(7,'Cameras de segurança',10,4032,'Anselmo',1);
                    
insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(9,'Computadores',20,8767,'Igor',1);

insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(3,'Mesas',1000,8767,'Gilberto',1);

insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(6,'Cadeiras',1000,8767,'Gilberto',1);
                    
insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(2,'Demais Produtos',600,8767,'Gilberto',1);
                    
		insert into tb_estoque (cd_produto,nm_produto,qt_produto,cd_funcionario,nm_funcionario,cd_escola)
					values(111,'Demais Produtos',600,8767,'Gilberto',1);
                    
                    
select * from tb_estoque;
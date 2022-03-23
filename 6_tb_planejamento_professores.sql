create table tb_planejamento_professores (
	cd_planejamento int not null primary key,
    dt_data date not null,
    ds_planejamento varchar(200) not null,
    nm_disciplina varchar (30) not null,
    nm_professor varchar (45) not null,
    cd_professor int not null,
    cd_escola int not null,
    foreign key (cd_professor) references tb_funcionarios(cd_funcionario),
    foreign key (cd_escola) references tb_escola(cd_escola)
);


insert into tb_planejamento_professores (cd_planejamento,dt_data,ds_planejamento,nm_disciplina,nm_professor,cd_professor,cd_escola)
					values(2121,'2020-10-10','Explicação sobre mapa','Geografia','Silvana',123,1);
                    
insert into tb_planejamento_professores (cd_planejamento,dt_data,ds_planejamento,nm_disciplina,nm_professor,cd_professor,cd_escola)
					values(3131,'2020-10-11','Explicação sobre Seno e Cosseno','Matemática','Luis',456,1);
      
insert into tb_planejamento_professores (cd_planejamento,dt_data,ds_planejamento,nm_disciplina,nm_professor,cd_professor,cd_escola)
					values(4141,'2020-10-11','Aula de Literatura','Português','Lizandre',789,1);
      
insert into tb_planejamento_professores (cd_planejamento,dt_data,ds_planejamento,nm_disciplina,nm_professor,cd_professor,cd_escola)
					values(5151,'2020-10-14','Tabéla periódica','Química','Shayane',987,1);
      
insert into tb_planejamento_professores (cd_planejamento,dt_data,ds_planejamento,nm_disciplina,nm_professor,cd_professor,cd_escola)
					values(6161,'2020-10-17','A lei da gravidade','Física','Mário',654,1);
      
insert into tb_planejamento_professores (cd_planejamento,dt_data,ds_planejamento,nm_disciplina,nm_professor,cd_professor,cd_escola)
					values(7171,'2020-10-18','Como funciona a fotossíntese','Biologia','Jackson',321,1);

select * from tb_planejamento_professores;
      
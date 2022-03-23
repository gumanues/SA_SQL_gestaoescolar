create table tb_boletim (
	cd_nota int not null primary key,
    nota_1 decimal(8,2) not null,
    nota_2 decimal(8,2) not null,
    nota_3 decimal(8,2) not null,
	nota_media decimal(8,2) not null,
	qt_presenca int not null,
	ds_status varchar(11) not null,
	nm_aluno varchar(45),
    nota_recuperacao int,
    cd_aluno int not null,
	cd_escola int not null,
	foreign key (cd_aluno) references tb_aluno(cd_matricula),
    foreign key (cd_escola) references tb_escola(cd_escola)
); 

insert into tb_boletim (cd_nota,nota_media,nota_1,nota_2,nota_3,qt_presenca,ds_status,nm_aluno,nota_recuperacao,cd_aluno,cd_escola)
					values(34543,8.0,6.0,8.0,8.0,75,'Aprovado','Gabrielly',0,54321,1);

insert into tb_boletim (cd_nota,nota_media,nota_1,nota_2,nota_3,qt_presenca,ds_status,nm_aluno,nota_recuperacao,cd_aluno,cd_escola)
					values(45654,7,5.0,8.0,8.0,80,'Aprovado','Bruno',0,12345,1);

insert into tb_boletim (cd_nota,nota_media,nota_1,nota_2,nota_3,qt_presenca,ds_status,nm_aluno,nota_recuperacao,cd_aluno,cd_escola)
					values(67876,9,9.0,9.0,9.0,90,'Aprovado','Denise',0,67890,1);

insert into tb_boletim (cd_nota,nota_media,nota_1,nota_2,nota_3,qt_presenca,ds_status,nm_aluno,nota_recuperacao,cd_aluno,cd_escola)
					values(98789,6.5,8.5,5.0,6.0,60,'Recuperação','Thaina',7,98766,1);

insert into tb_boletim (cd_nota,nota_media,nota_1,nota_2,nota_3,qt_presenca,ds_status,nm_aluno,nota_recuperacao,cd_aluno,cd_escola)
					values(65456,10,10,10,10,95,'Aprovado','Ana',0,43444,1);
                    
insert into tb_boletim (cd_nota,nota_media,nota_1,nota_2,nota_3,qt_presenca,ds_status,nm_aluno,nota_recuperacao,cd_aluno,cd_escola)
					values(43234,3.16,3.5,3.0,3.0,35,'Reprovado','Thalita',1,54322,1);
                    
select * from tb_boletim;
             
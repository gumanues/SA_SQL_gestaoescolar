/*add escola*/
delimiter $$
 create procedure e_escola_save(
	cd_escola int,
    pnm_escola varchar(77),
	pds_endereco varchar (77),
	pnr_telefone bigint,
	pds_horario varchar(22)
    )
 begin
    insert into tb_escola values(cd_escola,pnm_escola,pds_endereco,pnr_telefone,pds_horario);
    select * from tb_escola;
 end $$   
 delimiter $$ 
 

 
 /*delete escola*/
 
delimiter $$
create procedure e_escola_delete(
 pcd_escola int
)
begin
  delete from tb_escola where cd_escola = pcd_escola;
  select * from tb_escola;
end $$
delimiter $$
 
/*------------------------------------------------------------*/
 
/*add secretaria*/
 delimiter $$
 create procedure s_secretaria_save(
	cd_secretaria int,
	nm_secretaria varchar(45),
	cd_escola int
	)
 begin
   insert into tb_secretaria values(cd_secretaria,nm_secretaria,cd_escola);
   select * from tb_secretaria;
 end $$   
 delimiter $$
 
 
 /*delete secretaria*/
 delimiter $$
create procedure s_secretaria_delete(
 pcd_secretaria int
)
begin
  delete from tb_secretaria where cd_secretaria = pcd_secretaria;
  select * from tb_secretaria;
end $$
delimiter $$


/*---------------------------------------------------*/
 /*add*/
  delimiter $$
 create procedure a_aluno_save(
	pcd_matricula int,
	pcpf_aluno bigint,
	pnm_aluno varchar(45),
	pserie_aluno varchar(5),
    pcd_escola int
    )
 begin
	insert into tb_aluno values (pcd_matricula,pcpf_aluno,pnm_aluno,pserie_aluno,pcd_escola);
    select * from tb_aluno;
 end $$   
 delimiter $$
 
 
 
 /*delete*/
 delimiter $$
create procedure a_aluno_delete(
 pcd_matricula int
)
begin
  delete from tb_boletim where cd_aluno = pcd_matricula;
  delete from tb_aluno where cd_matricula = pcd_matricula;
  select * from tb_aluno;
end $$
delimiter $$


 /*-----------------------------------------------------------*/
  /*add*/
  delimiter $$
 create procedure b_boletim_save(
	pcd_nota int,
    pnota_1 decimal(8,2),
    pnota_2 decimal(8,2),
    pnota_3 decimal(8,2),
	pnota_media decimal(8,2),
	pqt_presenca int,
	pds_status varchar(11),
	pnm_aluno varchar(45),
    pnota_recuperacao int,
    pcd_aluno int,
	pcd_escola int
    )
 begin
	insert into tb_boletim values(pcd_nota,pnota_media,pnota_1,pnota_2,pnota_3,pqt_presenca,pds_status,pnm_aluno,pnota_recuperacao,pcd_aluno,pcd_escola);
    select * from tb_boletim;
 end $$   
 delimiter $$
 
 
 /*delete*/
 
 delimiter $$
create procedure b_boletim_delete(
 pcd_nota int
)
begin
  delete from tb_boletim where cd_nota = pcd_nota;
  select * from tb_boletim;
end $$
delimiter $$

 
 /*---------------------------------------*/
 /*add*/
  delimiter $$
 create procedure f_funcionarios_save(
	 pcd_funcionario int,
	 pcpf_funcionario bigint(11),
	 pnm_funcionario varchar(45),
	 pvl_salario decimal(8,2),
	 pds_turno varchar(10),
	 pds_cargo varchar(30),
	 pcd_escola int
	 )
 begin
	insert into tb_funcionarios values(pcd_funcionario,pcpf_funcionario,pnm_funcionario,pvl_salario,pds_turno,pds_cargo,pcd_escola);
    select * from tb_funcionarios;
 end $$   
 delimiter $$
 
 
 /*delete*/
 delimiter $$
create procedure f_funcionario_delete(
 pcd_funcionario int
)
begin
  delete from tb_estoque where cd_funcionario = pcd_funcionario;
  delete from tb_planejamento_professores where cd_professor = pcd_funcionario;
  delete from tb_funcionarios where cd_funcionario = pcd_funcionario;
  select * from tb_funcionarios;
end $$
delimiter $$

 /*---------------------------------------------*/
 /*add*/
  delimiter $$
 create procedure p_planejamento_save(
 	pcd_planejamento int,
    pdt_data date,
    pds_planejamento varchar(200),
    pnm_disciplina varchar (20),
    pnm_professor varchar (45),
    pcd_professor int,
    pcd_escola int
    )
 begin
	insert into tb_planejamento_professores values(pcd_planejamento,pdt_data,pds_planejamento,pnm_disciplina,pnm_professor,pcd_professor,pcd_escola);
    select * from tb_planejamento_professores;
 end $$   
 delimiter $$

 
  /*delete*/
 delimiter $$
create procedure p_planejamento_delete(
 pcd_planejamento int
)
begin
  delete from tb_planejamento_professores where cd_planejamento = pcd_planejamento;
  select * from tb_planejamento_professores;
end $$
delimiter $$

 
  /*--------------------------------------------------*/
/*add*/

  delimiter $$
 create procedure es_estoque_save(
	 pcd_produto int,
	 pnm_produto varchar(45),
	 pqt_produto int,
     pcd_funcionario int,
	 pnm_funcionario varchar(45),
	 pcd_escola int
	 )
 begin
	insert into tb_estoque values(pcd_produto,pnm_produto,pqt_produto,pcd_funcionario,pnm_funcionario,pcd_escola);
    select * from tb_estoque;
 end $$   
 delimiter $$
 
 /*delete*/
delimiter $$
create procedure es_estoque_delete(
 pcd_produto int
)
begin
  delete from tb_estoque where cd_produto = pcd_produto;
  select * from tb_estoque;
end $$
delimiter $$






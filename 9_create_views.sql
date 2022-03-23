/*-------aluno-------*/
create view a_aluno
as 
select
	*
from 
	tb_aluno;
    
create view a_aluno_crescente
as
select 
	nm_aluno, cpf_aluno, cd_matricula
from
	tb_aluno
	order by nm_aluno asc;

create view a_aluno_decrescente
as
select 
	nm_aluno, cpf_aluno, cd_matricula
from
	tb_aluno
	order by nm_aluno desc;

create view a_matricula_crescente
as
select 
	*
from
	tb_aluno
	order by cd_matricula asc;
        
create view a_matricula_decrescente
as
select 
	*
from
	tb_aluno
	order by cd_matricula desc;



/*-------Boletim-------*/
create view b_boletim
as 
select
	*
from 
	tb_boletim;
    
create view b_orderby_aprovados
as 
select
	*
from 
	tb_boletim
	order by ds_status asc;
    
create view b_orderby_reprovados
as 
select
	*
from 
	tb_boletim
	order by ds_status desc;
    
create view b_aprovados
as 
select
	cd_nota, nm_aluno, ds_status
from 
	tb_boletim
where 
	ds_status = 'Aprovado' 
    order by nm_aluno asc;
    
create view b_reprovados
as 
select
	cd_nota, nm_aluno, ds_status
from 
	tb_boletim
where 
	ds_status = 'Reprovado' 
    order by nm_aluno asc;


create view b_recuperacao
as 
select
	cd_nota, nm_aluno, ds_status
from 
	tb_boletim
where 
	ds_status = 'Recuperação' 
    order by nm_aluno asc;  

/*--------------*/
create view p_planejamento
as 
select
	*
from 
	tb_planejamento_professores;
    
create view p_crescente_professor
as 
select
	*
from 
	tb_planejamento_professores
    order by nm_professor asc;

/*--------------*/
create view e_escola
as 
select
	*
from 
	tb_escola;
/*--------------*/
create view es_estoque
as 
select
	*
from 
	tb_estoque;

create view es_inner_crescente
as 
select
    fu.nm_funcionario,
    es.cd_funcionario,
	es.nm_produto, 
    es.qt_produto
from 
	tb_estoque es
inner join  tb_funcionarios fu on
(fu.cd_funcionario = es.cd_funcionario)
order by nm_produto asc;

create view es_menor30
as 
select
	*
from 
	tb_estoque
    where qt_produto < 30;
    
create view es_funcio_crescente
as 
select
	*
from 
	tb_estoque
    order by nm_funcionario asc;
    
/*--------------*/
create view f_funcionarios
as 
select
	*
from 
	tb_funcionarios;
    
create view f_crescente
as 
select
	*
from 
	tb_funcionarios
    order by nm_funcionario asc;
    
create view f_decrescente
as 
select
	*
from 
	tb_funcionarios
    order by nm_funcionario desc;

create view f_noturno
as 
select
	*
from 
	tb_funcionarios
    where ds_turno = 'Noturno';
    
create view f_matutino
as 
select
	*
from 
	tb_funcionarios
    where ds_turno = 'Matutino';
    
create view f_comercial
as 
select
	*
from 
	tb_funcionarios
    where ds_turno = 'Comercial';
    
create view f_carga_horaria
as 
select
	*
from 
	tb_funcionarios
    where ds_turno != 'Comercial' and ds_turno != 'Matutino' and ds_turno != 'Noturno' and ds_turno != 'Vespertino';
    
/*--------------*/
create view s_secretaria
as 
select
	*
from 
	tb_secretaria;
/*--------------*/

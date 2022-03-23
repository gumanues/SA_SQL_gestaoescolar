/*call escola */
call e_escola_save (2,"Arnaldo","Rua Y",99999999,"19 às 20");
call e_escola_delete ("2");

/*call secretaria*/
call s_secretaria_save (21,"Sandro",1);
call s_secretaria_delete("20");

/*call aluno*/
call a_aluno_delete("67890");
call a_aluno_save(99999,20000000000,'Gustavo','2 ano',1);

/*call boletim*/
call b_boletim_delete("98789");
call b_boletim_save(88888,10,10,10,10,100,'Aprovado','Gustavo',0,99999,1);

/*call funcionarios*/
call f_funcionario_delete("3423");
call f_funcionarios_save(999,70000000000,'Gabriel',5000,'Comercial','Diretor',1);

/*call planejamento*/
call p_planejamento_delete("6161");
call p_planejamento_save(2000,'2020-11-22','Explicação Norte e Sul','Geografia','Silvana',123,1);

/*call estoque*/
call es_estoque_delete("4");
call es_estoque_save(10,'Giz',500,8767,'Gilberto',1);
 

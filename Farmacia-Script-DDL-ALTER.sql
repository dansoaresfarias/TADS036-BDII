alter table departamento
	add column descricao varchar(150) null; 
    
alter table departamento 	
	drop column descricao;

alter table departamento
	add column descricao varchar(150) null after email; 

alter table departamento
	change column nome nome varchar(25) not null; 
    
alter table cliente
	add column idade int null;
    
alter table cliente
	add column pontuacao int not null;
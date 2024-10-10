-- Comando SQL: DQL SELECT

select * from funcionario;

select cpf, nome, sexo, dataNasc, estadoCivil, email, ch, salario, comissao, dataAdm 
	from funcionario;

select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario;
    
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		order by nome desc;
        
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where sexo = 'F'
			order by nome;        
        
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where salario >= 3000 and
			sexo = 'M'
			order by nome;        
        
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where dataAdm < '2020-03-04'
			order by nome;        
        
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where dataAdm >= '2020-06-01' and
			dataAdm <= '2022-06-30'
			order by nome;          
        
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where dataAdm between '2020-06-01' and '2022-06-30'
			order by nome;        
        
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where salario between 4000 and 5000
			order by nome;          

select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where nome like "%Costa"
			order by nome;    
            
            
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where nome like "Ana%"
			order by nome;  
            
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where nome like "%Ana%"
			order by nome;
            
select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario
		where nome like "%Costa" or
			nome like "%Silva" or
            nome like "%Oliveira"
			order by nome;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		order by salario+comissao desc;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		order by nome;



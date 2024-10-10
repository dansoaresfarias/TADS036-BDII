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
		where salario >= avg(salario)
			order by nome;

select avg(salario) from funcionario;

select max(salario) from funcionario;

select min(salario) from funcionario;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where salario >= (select avg(salario) from funcionario)
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where salario = (select max(salario) from funcionario)
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where salario = (select min(salario) from funcionario)
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where dataNasc = (select max(dataNasc) from funcionario)
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where timestampdiff(year, dataNasc, now()) = 
			(select max(timestampdiff(year, dataNasc, now())) from funcionario)
			order by nome;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where cpf in (select funcionario_cpf from dependente)
			order by nome;
            
select funcionario_cpf from dependente;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão" 
	from funcionario
		where cpf in (select funcionario_cpf from enderecoFunc 
							where cidade like "Olinda")
			order by nome;
            
select funcionario_cpf from enderecoFunc where cidade like "Olinda";            

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario, enderecoFunc
		order by nome;
        
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario, enderecoFunc
		where cpf = funcionario_cpf
			order by nome;

select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		join enderecoFunc on cpf = funcionario_cpf
			order by nome;
            
select cpf as "CPF", upper(nome) "Funcionário", sexo "Gênero", 
	date_format(dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, dataNasc, now()) "Idade",
	estadoCivil "Estado Civil", email "E-mail", concat(ch, 'h') "Carga-horária", 
    concat('R$ ', format(salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(salario + comissao, 2, 'de_DE')) "Salário Final",
    date_format(dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão",
    bairro "Bairro", cidade "Cidade"
	from funcionario
		inner join enderecoFunc on cpf = funcionario_cpf
			order by nome;            

select dep.cpf "CPF do Dependente", dep.nome "Dependente", 
	timestampdiff(year, dep.dataNasc, now()) "Idade do Dependente",
    dep.parentesco "Parentesco", func.nome "Responsável"
	from dependente dep
		inner join funcionario func on func.cpf = dep.funcionario_cpf
			order by func.nome;

select func.cpf "CPF", func.nome "Funcionario", 
	count(dep.cpf) "Quantidade de Dependentes"
    from funcionario func
		inner join dependente dep on dep.funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;

select func.cpf "CPF", func.nome "Funcionario", 
	count(dep.cpf) "Quantidade de Dependentes"
    from funcionario func
		left join dependente dep on dep.funcionario_cpf = func.cpf
			group by func.cpf
				order by func.nome;



            
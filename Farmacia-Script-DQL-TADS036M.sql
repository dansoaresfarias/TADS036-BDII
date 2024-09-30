-- Comando SQL: DQL SELECT

select * from funcionario;

select cpf, nome, sexo, dataNasc, estadoCivil, email, ch, salario, comissao, dataAdm 
	from funcionario;

select cpf as "CPF", nome "Funcionário", sexo "Gênero", dataNasc "Data de Nascimento", 
	estadoCivil "Estado Civil", email "E-mail", ch "Carga-horária", salario "Salário", 
    comissao "Comissão", dataAdm "Data de Admissão" 
	from funcionario;
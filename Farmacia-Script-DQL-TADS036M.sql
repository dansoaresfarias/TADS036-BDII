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

select upper(func.nome) "Funcionário", func.cpf as "CPF", func.sexo "Gênero", 
	date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
    timestampdiff(year, func.dataNasc, now()) "Idade",
	func.estadoCivil "Estado Civil", func.email "E-mail", concat(func.ch, 'h') "Carga-horária", 
    concat('R$ ', format(func.salario, 2, 'de_DE')) "Salário", 
    concat('R$ ', format(func.comissao, 2, 'de_DE')) "Comissão", 
    concat('R$ ', format(func.salario + func.comissao, 2, 'de_DE')) "Salário Final",
    date_format(func.dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão", 
    dep.nome "Departamento", tel.numero "Número de Telefone"
	from funcionario func
		inner join trabalhar trb on trb.Funcionario_cpf = func.cpf
        inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
        left join telefone tel on tel.Funcionario_cpf = func.cpf
			where dataAdm between '2020-06-01' and '2022-06-30'
				order by func.nome;        

create view RelatorioFunc as
	select upper(func.nome) "Funcionário", func.cpf as "CPF", func.sexo "Gênero", 
		date_format(func.dataNasc, '%d/%m/%Y') "Data de Nascimento", 
		timestampdiff(year, func.dataNasc, now()) "Idade",
		func.estadoCivil "Estado Civil", func.email "E-mail", concat(func.ch, 'h') "Carga-horária", 
		concat('R$ ', format(func.salario, 2, 'de_DE')) "Salário", 
		concat('R$ ', format(func.comissao, 2, 'de_DE')) "Comissão", 
		concat('R$ ', format(func.salario + func.comissao, 2, 'de_DE')) "Salário Final",
		date_format(func.dataAdm, '%H:%i - %d/%m/%Y') "Data de Admissão", 
		dep.nome "Departamento", tel.numero "Número de Telefone"
		from funcionario func
			inner join trabalhar trb on trb.Funcionario_cpf = func.cpf
			inner join departamento dep on dep.idDepartamento = trb.Departamento_idDepartamento
			left join telefone tel on tel.Funcionario_cpf = func.cpf
				order by func.nome;

drop view relatoriofunc;

select * from relatoriofunc;

select * from relatoriofunc
	where `Gênero` = 'f';

select * from relatoriofunc
	where Departamento like "Frente%";

select dep.nome "Departamento", 
	count(trb.Funcionario_cpf) "Quantidade de Funcionários", 
    concat("R$ ", format(avg(func.salario), 2, 'de_DE')) "Média Salarial",
    concat("R$ ", format(avg(func.comissao), 2, 'de_DE')) "Média das Comissões",
    concat("R$ ", format(sum(func.salario + func.comissao), 2, 'de_DE')) "Investimento com Funcionário",
	coalesce(grt.nome, "Não tem") "Gerente"
	from departamento dep
		inner join trabalhar trb on trb.Departamento_idDepartamento = dep.idDepartamento
        inner join funcionario func on func.cpf = trb.Funcionario_cpf
        left join funcionario grt on grt.cpf = dep.Gerente_cpf
			group by trb.Departamento_idDepartamento
				order by dep.nome;

-- "Data da Venda", "Valor Pago", "Cliente", "Vendedor"
select date_format(vnd.dataVenda, '%d/%m/%Y - %H:%i') "Data da Venda",
	concat("R$ ", format(vnd.valorTotal - coalesce(vnd.desconto, 0), 2, 'de_DE')) "Valor Pago",
    cli.nome "Cliente",
    func.nome "Vendedor"
	from venda vnd
		inner join cliente cli on cli.cpf = vnd.Cliente_cpf
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			order by vnd.dataVenda;

select func.nome "Vendedor", 
	count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(vnd.valorTotal - coalesce(vnd.desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			group by func.cpf
				order by sum(vnd.valorTotal - coalesce(vnd.desconto, 0)) desc;

select func.nome "Vendedor", 
	count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(vnd.valorTotal - coalesce(vnd.desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
        inner join funcionario func on func.cpf = vnd.Funcionario_cpf
			where vnd.dataVenda between '2021-01-01' and '2021-03-31'
				group by func.cpf
					order by sum(vnd.valorTotal - coalesce(vnd.desconto, 0)) desc;

select coalesce(endC.cidade, "Não informado") "Cidade", 
	coalesce(endC.bairro, "Não informado") "Bairro", 
	count(vnd.idVenda) "Quantidade de Vendas",
	concat("R$ ", format(sum(vnd.valorTotal - coalesce(vnd.desconto, 0)), 2, 'de_DE')) "Faturamento"
	from venda vnd
        inner join cliente cli on cli.cpf = vnd.Cliente_cpf
        left join enderecocli endC on endC.Cliente_cpf = cli.cpf
			group by endC.cidade, endC.bairro
				order by sum(vnd.valorTotal - coalesce(vnd.desconto, 0)) desc;

select prod.nome "Produto", count(ivndProd.Venda_idVenda) "Frequência em Vendas" 
	from itensvendaprod ivndProd
		inner join produto prod on prod.idProduto = ivndProd.Produto_idProduto
			group by ivndProd.Produto_idProduto
				order by count(ivndProd.Venda_idVenda) desc
					limit 10;

select prod.nome "Produto", count(ivndProd.Venda_idVenda) "Frequência em Vendas",
	sum(ivndProd.quantidade) "Quantidade Vendida", 
    concat("R$ ", format(sum(ivndProd.quantidade*ivndProd.valorDeVenda), 2, 'de_DE')) "Faturamento por Produto"
	from itensvendaprod ivndProd
		inner join produto prod on prod.idProduto = ivndProd.Produto_idProduto
			group by ivndProd.Produto_idProduto
				order by sum(ivndProd.quantidade) desc
					limit 10;

select prod.nome "Produto", count(ivndProd.Venda_idVenda) "Frequência em Vendas",
	sum(ivndProd.quantidade) "Quantidade Vendida", 
    concat("R$ ", format(sum(ivndProd.quantidade*ivndProd.valorDeVenda), 2, 'de_DE')) "Faturamento por Produto"
	from itensvendaprod ivndProd
		inner join produto prod on prod.idProduto = ivndProd.Produto_idProduto
			group by ivndProd.Produto_idProduto
				order by sum(ivndProd.quantidade*ivndProd.valorDeVenda) desc
					limit 10;
 
select tipo "Tipo", count(Venda_idVenda) "Participação em Vendas",
	concat("R$ ", format(sum(valorPago), 2, 'de_DE')) "Total R$"
	from formapag
		group by tipo
			order by sum(valorPago) desc;

select srv.nome "Serviço", count(ivndSrv.Venda_idVenda) "Frequência em Vendas",
	sum(ivndSrv.quantidade) "Quantidade Vendida", 
    concat("R$ ", format(sum(ivndSrv.quantidade*ivndSrv.valorVenda), 2, 'de_DE')) "Faturamento por Produto"
	from itensvendaservico ivndSrv
		inner join servico srv on srv.idServico = ivndSrv.Servico_idServico
			group by ivndSrv.Servico_idServico
				order by sum(ivndSrv.quantidade*ivndSrv.valorVenda) desc
					limit 10;

-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<=6), INSS, IRRF, salario liquido
select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    calcAuxSaude(func.dataNasc) "Auxílio Saúde"
	from funcionario func
		order by func.nome;

-- criando a função auxilio saude
delimiter $$
create function calcAuxSaude(dn date)
	returns decimal(6,2) deterministic
	begin
		declare idade int;
        declare auxSaude decimal(6,2) default 0.0;
		select timestampdiff(year, dn, now()) into idade;
        if idade <= 25 then set auxSaude = 250;
			elseif idade>= 26 and idade <= 35 then set auxSaude = 350;
            elseif idade>= 36 and idade <= 45 then set auxSaude = 450;
            else set auxSaude = 550;
		end if;
        return auxSaude;
    end $$
delimiter ;

-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<=6), INSS, IRRF, salario liquido
select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(func.dataNasc), 2, 'de_DE')) "Auxílio Saúde"
	from funcionario func
		order by func.nome;

-- Questões do petshop
-- Relatório 1 - Lista dos empregados admitidos entre 2019-01-01 e 2022-03-31, 
-- trazendo as colunas (Nome Empregado, CPF Empregado, Data Admissão,  Salário, 
-- Departamento, Número de Telefone), ordenado por data de admissão decrescente;
select upper(emp.nome) "Nome Empregado", emp.cpf "CPF Empregado", 
	date_format(emp.dataAdm, '%H:%i - %d/%m/%Y') "Data Admissão",  
	concat("R$ ", format(emp.salario, 2, 'de_DE'))"Salário", 
    dep.nome "Departamento", tel.numero "Número de Telefone" 
	from empregado emp
		inner join departamento dep on dep.idDepartamento = emp.Departamento_idDepartamento
		left join telefone tel on tel.empregado_cpf = emp.cpf
			where emp.dataAdm between '2019-01-01' and '2023-03-31'
				order by emp.dataAdm desc;


-- Relatório 2 - Lista dos empregados que ganham menos que a média salarial dos funcionários 
-- do Petshop, trazendo as colunas (Nome Empregado, CPF Empregado, Data Admissão,  
-- Salário, Departamento, Número de Telefone), ordenado por nome do empregado;
select upper(emp.nome) "Nome Empregado", emp.cpf "CPF Empregado", 
	date_format(emp.dataAdm, '%H:%i - %d/%m/%Y') "Data Admissão",  
	concat("R$ ", format(emp.salario, 2, 'de_DE')) "Salário", 
    dep.nome "Departamento", tel.numero "Número de Telefone" 
	from empregado emp
    inner join departamento dep on dep.idDepartamento = emp.Departamento_idDepartamento
	left join telefone tel on tel.empregado_cpf = emp.cpf
		where salario <= (select avg(salario) from empregado)
				order by emp.nome;

-- Relatório 3 - Lista dos departamentos com a quantidade de empregados total por 
-- cada departamento, trazendo também a média salarial dos funcionários do departamento 
-- e a média de comissão recebida pelos empregados do departamento, com as colunas 
-- (Departamento, Quantidade de Empregados, Média Salarial, Média da Comissão), 
-- ordenado por nome do departamento;
select dep.nome "Departamento", count(emp.cpf) "Quantidade de Empregados", 
	concat("R$ ", format(avg(emp.salario), 2, 'de_DE')) "Média Salarial", 
    concat("R$ ", format(avg(emp.comissao), 2, 'de_DE')) "Média da Comissão"
	from departamento dep
		left join empregado emp on emp.Departamento_idDepartamento = dep.idDepartamento
		group by dep.idDepartamento
			order by dep.nome;

-- Relatório 4 - Lista dos empregados com a quantidade total de vendas já realiza 
-- por cada Empregado, além da soma do valor total das vendas do empregado e a soma 
-- de suas comissões, trazendo as colunas (Nome Empregado, CPF Empregado, Sexo, Salário, 
-- Quantidade Vendas, Total Valor Vendido, Total Comissão das Vendas), ordenado por 
-- quantidade total de vendas realizadas;
select upper(emp.nome) "Nome Empregado", emp.cpf "CPF Empregado", emp.sexo "Gênero",
	concat("R$ ", format(emp.salario, 2, 'de_DE')) "Salário", 
    count(vnd.idVenda) "Quantidade Vendas", 
    concat("R$ ", format(sum(vnd.valor - vnd.desconto), 2, 'de_DE')) "Total Valor Vendido", 
    concat("R$ ", format(sum(vnd.comissao), 2, 'de_DE')) "Total Comissão das Vendas"
	from empregado emp
		left join venda vnd on vnd.Empregado_cpf = emp.cpf
			group by emp.cpf
				order by count(vnd.idVenda) desc;

-- Relatório 5 - Lista dos empregados que prestaram Serviço na venda computando a 
-- quantidade total de vendas realizadas com serviço por cada Empregado, além da soma do 
-- valor total apurado pelos serviços prestados nas vendas por empregado e a soma de suas 
-- comissões, trazendo as colunas (Nome Empregado, CPF Empregado, Sexo, Salário, Quantidade 
-- Vendas com Serviço, Total Valor Vendido com Serviço, Total Comissão das Vendas com Serviço)
-- , ordenado por quantidade total de vendas realizadas;
select upper(emp.nome) "Nome Empregado", emp.cpf "CPF Empregado", emp.sexo "Gênero",
	concat("R$ ", format(emp.salario, 2, 'de_DE')) "Salário", 
    count(vnd.idVenda) "Quantidade de Vendas com Serviço", 
    concat("R$ ", format(sum((isv.valor - isv.desconto) * isv.quantidade), 2, 'de_DE')) 
		"Total Valor Vendido com Serviço",
    concat("R$ ", format(sum(vnd.comissao), 2, 'de_DE')) 
		"Total Comissão das Vendas com Serviço"
	 from empregado emp
		inner join itensservico isv on isv.Empregado_cpf = emp.cpf
        inner join servico srv on srv.idServico = isv.Servico_idServico
        inner join venda vnd on vnd.idVenda = isv.Venda_idVenda
			group by emp.cpf
				order by count(vnd.idVenda) desc;

-- Relatório 6 - Lista dos serviços já realizados por um Pet, trazendo as colunas 
-- (Nome do Pet, Data do Serviço, Nome do Serviço, Quantidade, Valor, 
-- Empregado que realizou o Serviço), ordenado por data do serviço da mais recente a 
-- mais antiga;  
select p.nome "Nome do Pet", vnd.`data` "Data do Serviço", srv.nome "Nome do Serviço", 
	isv.quantidade "Quantidade", 
    concat("R$ ", format(isv.valor, 2, 'de_DE')) "Valor", 
	emp.nome "Empregado que realizou o Serviço"
	 from pet p 
		inner join itensservico isv on isv.pet_idpet = p.idpet
        inner join servico srv on srv.idServico = isv.Servico_idServico
        inner join venda vnd on vnd.idVenda = isv.Venda_idVenda
		inner join empregado emp on emp.cpf = isv.Empregado_cpf
			order by vnd.`data` desc;
  
-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<6), INSS, IRRF, salario liquido
select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(func.dataNasc), 2, 'de_DE')) "Auxílio Saúde"
	from funcionario func
		order by func.nome;  
        
        
delimiter $$
create function auxEscola(pCPF varchar(14))
returns decimal(6,2) deterministic
	begin
		declare auxEscola decimal(6,2) default 0.0;
        select count(cpf)*180 into auxEscola
			from dependente
				where timestampdiff(year, dataNasc, now()) < 6 and
					Funcionario_cpf like pCPF
						group by Funcionario_cpf;
		return auxEscola;
    end $$
delimiter ;   

-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<6), INSS, IRRF, salario liquido
select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(func.dataNasc), 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(auxEscola(func.cpf), 2, 'de_DE')) "Auxílio Escola"
	from funcionario func
		order by func.nome;
   
delimiter $$
create function calcINSS(sb decimal(7,2))
returns decimal(6,2) deterministic
	begin
		declare inss decimal(6,2) default 0.0;
        if sb <= 1412.00 
			then set inss = sb * 0.075;
		elseif sb > 1412.00 and sb <= 2666.68
			then set inss = sb * 0.09;
        elseif sb > 2666.68 and sb <= 4000.03
			then set inss = sb * 0.12;
		elseif sb > 4000.03 and sb <= 7786.02
			then set inss = sb * 0.14;
		else set inss = 7786.02 * 0.14;
		end if;
        return inss;
    end $$
delimiter ;           
        
-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<6), INSS, IRRF, salario liquido
select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(func.dataNasc), 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(auxEscola(func.cpf), 2, 'de_DE')) "Auxílio Escola",
    concat("- R$ ", format(calcINSS(func.salario), 2, 'de_DE')) "INSS"
	from funcionario func
		order by func.nome;        
        
delimiter $$
create function calcIRRF(sb decimal(7,2))
returns decimal(6,2) deterministic
	begin
		declare irrf decimal(6,2) default 0.0;
        if sb >= 2259.20 and sb <= 2826.65
			then set irrf = sb * 0.075;
        elseif sb >= 2826.66 and sb <= 3751.05
			then set irrf = sb * 0.15;
		elseif sb >= 3751.06 and sb <= 4664.68
			then set irrf = sb * 0.225;
		else set irrf = sb * 0.275;
		end if;
        return irrf;
    end $$
delimiter ;  
  
-- cpf, funcionario, salario(SB), comissao, aux alimentacao(550), aux saude(idade),
-- aux escola(180*filho<6), INSS, IRRF, salario liquido
select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(func.dataNasc), 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(auxEscola(func.cpf), 2, 'de_DE')) "Auxílio Escola",
    concat("- R$ ", format(calcINSS(func.salario), 2, 'de_DE')) "INSS",
    concat("- R$ ", format(calcIRRF(func.salario), 2, 'de_DE')) "IRRF",
    concat("R$ ", format(func.salario + func.comissao + 550 + 
		calcAuxSaude(func.dataNasc) +  auxEscola(func.cpf) - 
		calcINSS(func.salario) - calcIRRF(func.salario), 2, 'de_DE')) "Salário Líquido"
	from funcionario func
		order by func.nome;  
        
create view vFolhaSalarial as
	select func.cpf "CPF", upper(func.nome) "Funcionário",
	concat("R$ ", format(func.salario, 2, 'de_DE')) "Salário Bruto",
    concat("R$ ", format(func.comissao, 2, 'de_DE')) "Comissão",
    concat("R$ ", format(550, 2, 'de_DE')) "Auxílio Alimentação",
    concat("R$ ", format(calcAuxSaude(func.dataNasc), 2, 'de_DE')) "Auxílio Saúde",
    concat("R$ ", format(auxEscola(func.cpf), 2, 'de_DE')) "Auxílio Escola",
    concat("- R$ ", format(calcINSS(func.salario), 2, 'de_DE')) "INSS",
    concat("- R$ ", format(calcIRRF(func.salario), 2, 'de_DE')) "IRRF",
    concat("R$ ", format(func.salario + func.comissao + 550 + 
		calcAuxSaude(func.dataNasc) +  auxEscola(func.cpf) - 
		calcINSS(func.salario) - calcIRRF(func.salario), 2, 'de_DE')) "Salário Líquido"
	from funcionario func
		order by func.nome;

select * from vfolhasalarial;

delimiter $$
create procedure cadFuncionario(in pcpf varchar(14),
								in pnome varchar(60), 
								in pnomeSocial varchar(45),
								in pemail varchar(45), 
								in psexo char(1), 
								in pestadoCivil varchar(15), 
								in pdataNasc date, 
								in pch int, 
								in psalario decimal(7,2),
								in pcomissao decimal(6,2), 
								in pdataAdm datetime,
								in puf char(2), 
								in pcidade varchar(60), 
								in pbairro varchar(60), 
								in prua varchar(70), 
								in pnumero int, 
								in pcomp varchar(45), 
								in pcep varchar(9),
								in pNumTel1 varchar(15),
								in pNumTel2 varchar(15),
								in pNumTel3 varchar(15))
	begin
		insert into funcionario (cpf, nome, nomeSocial, email, sexo, estadoCivil, 
        dataNasc, ch, salario, comissao, dataAdm)
			value(pcpf, pnome, pnomeSocial, pemail, psexo, pestadoCivil, 
        pdataNasc, pch, psalario, pcomissao, pdataAdm);
        insert into enderecofunc
			value (pcpf, puf, pcidade, pbairro, prua, pnumero, pcomp, pcep);
		insert into telefone (numero, funcionario_cpf)
			value (pNumTel1, pcpf);
		if (pNumTel2 is not null) 
			then insert into telefone (numero, funcionario_cpf) 
					value (pNumTel2, pcpf);
		end if;
        if (pNumTel3 is not null) 
			then insert into telefone (numero, funcionario_cpf) 
					value (pNumTel3, pcpf);
		end if;
    end $$
delimiter ;

call cadProcedure("323.568.951-12", "Morgana Souza", "Morg", "morg.souza@gmail.com",
	'F', "Divorciada", '2000-03-31', 30, 3200, 0, '2024-02-05', 'PE', "Recife",
    "Iputinga", "Rua Marechal Deodoro da Fonsceca", 56, "Casa B", "50030-070",
    "(81)996345658", "(81)986532124", null);









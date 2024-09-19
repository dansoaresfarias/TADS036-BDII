-- Comandos SQL: DML Insert

insert into cliente (cpf, nome, sexo, email, telefone, dataNasc)
	value ("123.321.456-00", "Maria Gabriella da Silva Calado", 
		'F', "mgsc@pe.senac.br", "81998975656", "2006-06-18");
        
insert into cliente (cpf, nome, sexo, email, telefone, dataNasc)
	values ("333.321.456-00", "Maria Lívia Soares da Silva", 
		'F', "mlss@pe.senac.br", "81977775656", "2003-02-10"),
        ("222.321.456-00", "João Italo Deodato Santos", 
		'M', "jids@pe.senac.br", "81999885656", "2004-06-25"),
        ("111.321.456-00", "Hadassa Gomes dos Santos", 
		'F', "hgs@pe.senac.br", "81991175655", "2001-04-02");
        
 insert into enderecocli (cliente_cpf, uf, cidade, bairro, rua, 
	numero, comp, cep)
    values ("123.321.456-00", "PE", "Recife", "Casa Amarela",
		"Rua Senador João Italo", 32, "1603", "50700-600"),
        ("333.321.456-00", "PE", "Olinda", "Peixinhos",
		"Rua Prefeito João Campos", 42, "A", "50880-130"),
        ("222.321.456-00", "PE", "Recife", "Madalena",
		"Rua Prof Danilo Farias", 1112, "403", "50050-100"),
        ("111.321.456-00", "PE", "Jaboatão dos Guararapes", "Piedade",
		"Rua Direita", 154, null, "50110-030");

        
        
        
        
        
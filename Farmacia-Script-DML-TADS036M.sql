-- Comandos SQL: DML Insert
insert into cliente (cpf, nome, sexo, email, telefone, dataNasc, pontuacao)
	value ("123.321.456-00", "Maria Gabriella da Silva Calado", 
		'F', "mgsc@pe.senac.br", "81998975656", "2006-06-18", 100);
        
insert into cliente (cpf, nome, sexo, email, telefone, dataNasc, pontuacao)
	values ("333.321.456-00", "Maria Lívia Soares da Silva", 
		'F', "mlss@pe.senac.br", "81977775656", "2003-02-10", 150),
        ("222.321.456-00", "João Italo Deodato Santos", 
		'M', "jids@pe.senac.br", "81999885656", "2004-06-25", 80),
        ("111.321.456-00", "Hadassa Gomes dos Santos", 
		'F', "hgs@pe.senac.br", "81991175655", "2001-04-02", 30);
        
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

INSERT INTO cliente (cpf, nome, sexo, email, telefone, dataNasc, pontuacao)
VALUES
    ("111.111.111-01", "Ana Beatriz Souza", 'F', "ana.souza@pe.senac.br", "81991112233", "1998-05-14", 200),
    ("222.222.222-02", "Carlos Eduardo Oliveira", 'M', "carlos.oliveira@pe.senac.br", "81992223344", "1995-09-22", 180),
    ("333.333.333-03", "Mariana Pereira Costa", 'F', "mariana.costa@pe.senac.br", "81993334455", "2001-12-01", 120),
    ("444.444.444-04", "Gabriel Lima Ferreira", 'M', "gabriel.lima@pe.senac.br", "81994445566", "1999-03-08", 100),
    ("555.555.555-05", "Julia Fernanda Martins", 'F', "julia.martins@pe.senac.br", "81995556677", "2002-10-25", 90),
    ("666.666.666-06", "Felipe Henrique da Silva", 'M', "felipe.silva@pe.senac.br", "81996667788", "1997-07-19", 140),
    ("777.777.777-07", "Isabela Moura Rodrigues", 'F', "isabela.moura@pe.senac.br", "81997778899", "2000-11-17", 160),
    ("888.888.888-08", "Lucas Rafael Santos", 'M', "lucas.santos@pe.senac.br", "81998889900", "1996-04-15", 130),
    ("999.999.999-09", "Renata Cristina Almeida", 'F', "renata.almeida@pe.senac.br", "81999990011", "2003-08-30", 150),
    ("111.111.111-10", "Ricardo José Araújo", 'M', "ricardo.araujo@pe.senac.br", "81991111001", "1994-02-21", 170),
    ("222.222.222-11", "Bianca Ribeiro Nunes", 'F', "bianca.nunes@pe.senac.br", "81992222002", "2001-01-12", 95),
    ("333.333.333-12", "Matheus Carvalho Santana", 'M', "matheus.santana@pe.senac.br", "81993333003", "1998-06-24", 60),
    ("444.444.444-13", "Vitória Gabriela Monteiro", 'F', "vitoria.monteiro@pe.senac.br", "81994444004", "2003-07-03", 180),
    ("555.555.555-14", "Diego Alves Mendes", 'M', "diego.mendes@pe.senac.br", "81995555005", "1999-10-18", 85),
    ("666.666.666-15", "Larissa Melo Figueiredo", 'F', "larissa.figueiredo@pe.senac.br", "81996666006", "2002-12-29", 125),
    ("777.777.777-16", "Rafael Batista Correia", 'M', "rafael.correia@pe.senac.br", "81997777007", "1997-03-09", 135),
    ("888.888.888-17", "Camila dos Anjos", 'F', "camila.anjos@pe.senac.br", "81998888008", "2000-09-05", 110),
    ("999.999.999-18", "Pedro Henrique Barros", 'M', "pedro.barros@pe.senac.br", "81999999009", "1996-11-12", 120),
    ("111.111.111-19", "Fernanda Cristina Guimarães", 'F', "fernanda.guimaraes@pe.senac.br", "81991111919", "1998-05-28", 200),
    ("222.222.222-20", "Vitor Lucas Pereira", 'M', "vitor.pereira@pe.senac.br", "81992222920", "1994-08-20", 190),
    ("333.333.333-21", "Laura Paiva Cunha", 'F', "laura.cunha@pe.senac.br", "81993333921", "2001-10-10", 150),
    ("444.444.444-22", "Thiago Augusto Costa", 'M', "thiago.costa@pe.senac.br", "81994444922", "2000-06-27", 110),
    ("555.555.555-23", "Sara Lúcia Fernandes", 'F', "sara.fernandes@pe.senac.br", "81995555923", "1999-04-04", 170),
    ("666.666.666-24", "Leonardo Gomes Matos", 'M', "leonardo.matos@pe.senac.br", "81996666924", "1996-09-11", 130),
    ("777.777.777-25", "Letícia Torres Freitas", 'F', "leticia.freitas@pe.senac.br", "81997777925", "2002-03-07", 140),
    ("888.888.888-26", "Bruno Henrique Oliveira", 'M', "bruno.oliveira@pe.senac.br", "81998888926", "1998-12-22", 200),
    ("999.999.999-27", "Alice Martins Cardoso", 'F', "alice.cardoso@pe.senac.br", "81999999927", "2001-11-11", 60),
    ("111.111.111-28", "Rodrigo Ramos Barbosa", 'M', "rodrigo.barbosa@pe.senac.br", "81991111028", "1997-07-16", 140),
    ("222.222.222-29", "Nicole Ferreira Nogueira", 'F', "nicole.nogueira@pe.senac.br", "81992222029", "2003-05-13", 90),
    ("333.333.333-30", "Guilherme Rocha Souza", 'M', "guilherme.souza@pe.senac.br", "81993333030", "1995-01-05", 180),
    ("444.444.444-31", "Manuela Alves Vieira", 'F', "manuela.vieira@pe.senac.br", "81994444031", "2000-08-09", 120),
    ("555.555.555-32", "Lucas Vinícius Braga", 'M', "lucas.braga@pe.senac.br", "81995555032", "1999-12-17", 160),
    ("666.666.666-33", "Eduarda Santos Lima", 'F', "eduarda.lima@pe.senac.br", "81996666033", "2002-04-01", 100),
    ("777.777.777-34", "Matheus Henrique Moreira", 'M', "matheus.moreira@pe.senac.br", "81997777034", "1996-11-28", 90),
    ("888.888.888-35", "Patrícia Maria Fonseca", 'F', "patricia.fonseca@pe.senac.br", "81998888035", "2001-02-20", 150),
    ("999.999.999-36", "Bruno Miguel Fernandes", 'M', "bruno.fernandes@pe.senac.br", "81999999036", "1994-06-06", 130),
    ("111.111.111-37", "Eduardo César Cunha", 'M', "eduardo.cunha@pe.senac.br", "81991111037", "1995-03-14", 125),
    ("222.222.222-38", "Roberta Dias Melo", 'F', "roberta.melo@pe.senac.br", "81992222038", "1998-07-07", 180),
    ("333.333.333-39", "Antônio Augusto Soares", 'M', "antonio.soares@pe.senac.br", "81993333039", "1997-09-30", 170),
    ("444.444.444-40", "Gabriela Marques Ferreira", 'F', "gabriela.ferreira@pe.senac.br", "81994444040", "2003-11-23", 100);
        
        
        
        
        
        
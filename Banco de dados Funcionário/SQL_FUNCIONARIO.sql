CREATE DATABASE dbFuncionario
USE dbFuncionario

CREATE TABLE tbCadfun(
	cod_fun  INT PRIMARY KEY IDENTITY,
	nome_fun   varchar(50),
	depto_fun   char(30),
	funcao_fun  char(30),
	salario_fun  decimal (10,3),
	dependente_fun   smallint
	);

-- TESTANDO O SELECT 
SELECT * FROM tbCadFun;

-- FAZENDO AS INSER��ES DE DADOS NA TABELA
INSERT INTO tbCadfun(nome_fun,depto_fun,funcao_fun,salario_fun,dependente_fun)
VALUES ('Jorge Silva','T.I','Analista',1.800,4),
	   ('Mario Santos','T.I','Programador',1.700,1),
	   ('Paula Silva ','T.I','Analista',3.200,4),
	   ('Vitor Souza','T.I','Designer',1.400,3),
	   ('Silvio Santos','TV','Reporter',1.800,4),
	   ('Alice Augusto','Logistica','Contabilidade',17.553,0),
	   ('Takamassa Nomuro','Futebol','M�dico',16.291,2),
	   ('Japodih Al Mossar','Culin�ria','Chef',3.800,2),
	   ('Leland Stotllemeyer','Policia','Delegado',2.500,4),
	   ('Alessia Russo','Futebol','Jogadora',50.800,4),
	   ('Myoui Mina','Restaurante','Chef',11.000,0),
	   ('Lilith Santos','T.I','Analista',1.400,2),
	   ('Inacio Silva','T.I','Programador',2.000,3),
	   ('Silvano Silva','T.I','Analista',1.400,2),
	   ('Silvia Silva','T.I','Analista',1.000,4),
	   ('Andr� Santos','T.I','fullStack',1.900,4),
	   ('Paula Silva','T.I','Programador',4.000,4),
	   ('Stefane Borges','Sa�de','Veterinaria',1.750,1),
	   ('Afonso Pedreiro','Sa�de','A�ougueiro',1.110,3),
	   ('Jair Silva','T.I','Analista',1.600,4);  


-- Fa�a uma simula��o para apresentar uma consulta com as colunas (campos) CODFUN, NOME, SALARIO com o sal�rio somado a R$ 250,00.
SELECT nome_fun, salario_fun + 00.250,00 AS Sal�rio FROM tbCadfun

-- Fa�a uma simula��o para apresentar uma consulta com as colunas (campos) CODFUN, NOME, SALARIO com o alias de �C�digo�, �Nome Funcion�rio�, �Salario R$�.
SELECT cod_fun AS C�digo, nome_fun AS Nome, salario_fun AS Sal�rio FROM tbCadfun

--  Apresente uma consulta de todos os campos (colunas) dos registros cuja fun��o seja igual a analista.
SELECT * FROM tbCadfun WHERE funcao_fun = 'Analista'

-- Apresente uma consulta de todos os campos (colunas) dos registros cujo sal�rio seja maior ou igual a R$ 1.700,00.
SELECT * FROM tbCadfun WHERE salario_fun >= 1.700 

-- . Fa�a uma consulta de todos os campos (colunas) dos registros cujo sal�rio seja maior que R$ 1.700,00.
SELECT * FROM tbCadfun WHERE salario_fun > 1.700 

--  Apresente uma consulta de todos os campos (colunas) dos registros cujo sal�rio seja menor que R$ 1.700,00.
SELECT * FROM tbCadfun WHERE salario_fun < 1.700 

-- . Apresente uma consulta de todos os campos (colunas) dos registros cujo sal�rio seja igual a R$ 1.700,00.
SELECT * FROM tbCadfun WHERE salario_fun = 1.700 

-- . Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios com fun��o de programador e de analista.
SELECT * FROM tbCadfun WHERE funcao_fun = 'Programador' OR funcao_fun = 'Analista'

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios com fun��o de programador e de analista que ganham acima de R$ 1.200,00.
SELECT * FROM tbCadfun WHERE funcao_fun = 'Programador' OR funcao_fun = 'Analista' AND salario_fun > 1.200

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios que n�o ocupem as fun��es de programador e de analista.
SELECT * FROM tbCadfun WHERE funcao_fun != 'Programador' AND funcao_fun != 'Analista'

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios que possuem entre 2 e 4 filhos.
SELECT * FROM tbCadfun WHERE dependente_fun >= 2 AND dependente_fun <= 4

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios que possuem entre 2 e 4 filhos que recebem sal�rio abaixo de R$ 2.000,00.
SELECT * FROM tbCadfun WHERE dependente_fun >= 2 AND dependente_fun <= 4 AND salario_fun < 2.000

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios que possuem abaixo de 2 e acima de 3 filhos.
SELECT * FROM tbCadfun WHERE dependente_fun < 2 OR dependente_fun > 3

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios que possuem o sobrenome SILVA.
SELECT * FROM tbCadfun WHERE nome_fun LIKE '%lva'

-- Apresente uma consulta de todos os campos (colunas) dos registros dos funcion�rios cujos nomes comecem com SILV.
SELECT * FROM tbCadfun WHERE nome_fun LIKE 'Silv%'

--  Quais s�o os funcion�rios que possuem o sobrenome SANTOS? Apresente apenas os nomes.
SELECT nome_fun FROM tbCadfun WHERE nome_fun LIKE '%antos%'

-- Apresente uma consulta de todos os campos (colunas) dos registros cujo sal�rio seja diferente de R$ 2.000,00.
SELECT * FROM tbCadfun WHERE salario_fun != 2.000

--  Apresente uma consulta que mostra o valor total dos sal�rios.
SELECT SUM(salario_fun) FROM tbCadfun

-- Apresente uma consulta de todos os funcion�rios que n�o possuem nenhum filho.
SELECT * FROM tbCadfun WHERE dependente_fun = 0

-- Apresente uma consulta retornem os funcion�rios que n�o possuem sobrenome SANTOS.
SELECT nome_fun FROM tbCadfun WHERE nome_fun NOT LIKE '%antos%'
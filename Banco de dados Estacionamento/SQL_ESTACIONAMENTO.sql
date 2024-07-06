CREATE DATABASE estacionamento;

USE estacionamento;

-- Tabelas de vagas
CREATE TABLE Vaga(
	cod_vaga INT PRIMARY KEY IDENTITY(1,1) not null,
	qtde_vaga INT not null,
	num_vaga INT not null
 );

 -- Tabela de carro 
 CREATE TABLE Carro(
	cod_carro INT PRIMARY KEY IDENTITY(1,1) not null,
	placa_carro VARCHAR(9) not null
 );

 -- tabela de funcionário
 CREATE TABLE Funcionario(
	cod_funcionario INT PRIMARY KEY IDENTITY(1,1),
	nome_funcionario VARCHAR(50) not null,
	fone_funcionario INT not null,
	cpf_funcionario VARCHAR(11) not null,
	logradouro_funcionario VARCHAR not null,
	num_casa INT not null, 
	rua_funcionario VARCHAR(200) not null,
	cep_funcionario varchar not null,
	estado_funcionario VARCHAR not null,
	uf_funcionario VARCHAR not null,
 );

 -- Tabela de ticket
 CREATE TABLE Ticket(
	cod_ticket INT PRIMARY KEY IDENTITY(1,1) not null,
	hora_entrada TIME not null,
	hora_saida TIME not null,
	cod_carro INT FOREIGN KEY REFERENCES Carro(cod_carro) not null,
	cod_funcionario INT FOREIGN KEY REFERENCES Funcionario(cod_funcionario) not null,
	cod_vaga INT FOREIGN KEY REFERENCES Vaga(cod_vaga) not null
 );


INSERT INTO Vaga(qtde_vaga, num_vaga)
VALUES(1,4); 

SELECT*FROM Vaga;

-- SELECT E INSERÇÃO DE VALORES À TABELA CARRO

INSERT INTO Carro(placa_carro)
	VALUES ('EAU096');

SELECT*FROM Carro;

-- SELECT E INSERÇÃO DE VALORES À TABELA FUNCIONÁRIO

INSERT INTO Funcionario(nome_funcionario, fone_funcionario, cpf_funcionario, logradouro_funcionario, num_casa, rua_funcionario, cep_funcionario, estado_funcionario, uf_funcionario)
	VALUES ('Vitor Augusto', 11954198965, '535.000.999-54','Avenida', 6, 'Avenida Higino Neves', '07053-100', 'São Paulo', 'SP'),
			('Eliezer', 11954198923, '067.005.997-92','Avenida', 28, 'Avenida Ayrton Senna', '07083-500', 'São Paulo', 'SP')

SELECT*FROM Funcionario; 


-- alterando o tipo de dado da tabela ticket





-- select e inserção de valores à tabela ticket


	
CREATE DATABASE restaurante
USE restaurante

-- TABELA DE MESA
CREATE TABLE Tb_mesa(
		numeroMesa INT PRIMARY KEY IDENTITY(1,1),
		quantidadeMesa INT,
);

-- TABELA DE FUNCIONÁRIO
CREATE TABLE Tb_Funcionario(
		
			idFuncionario INT PRIMARY KEY IDENTITY(1,1),
			nomeFuncionario VARCHAR(50),
			rgFuncionario VARCHAR(11),
			enderecoFuncionario VARCHAR(50), 
			salarioFuncionario NUMERIC,
			
);

-- Tabela dos pratos
CREATE TABLE Tb_prato(

		idPrato INT PRIMARY KEY IDENTITY(1,1),
		tipoPrato VARCHAR(20),
		nomePrato VARCHAR(50),
		qntPrato INT
);

-- TABELA DE PEDIDOS
CREATE TABLE Tb_Pedidos(
		idPedidos INT PRIMARY KEY IDENTITY(1,1), 
		nomePedido VARCHAR(50),
		idPrato INT FOREIGN KEY (idPrato) REFERENCES Tb_prato(idPrato),
		idMesa INT FOREIGN KEY (idMesa) REFERENCES Tb_Mesa(idMesa),
		idFuncionario INT FOREIGN KEY (idFuncionario) REFERENCES TbFuncionario(idFuncionario)
);
 
 INSERT INTO Tb_Prato(idPrato, tipoPrato, nomePrato,qntPrato)
	VALUES (1,'Italiano','Macarrão a bolonhesa',3);

 SELECT*FROM Tb_Prato


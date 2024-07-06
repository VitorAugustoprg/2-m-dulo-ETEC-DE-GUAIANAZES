CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno (
id_aluno INT PRIMARY KEY IDENTITY(1,1),
nome_aluno VARCHAR (100) NOT NULL,
ra_aluno INT UNIQUE NOT NULL,
email_aluno VARCHAR(100)
);

INSERT INTO tb_aluno(nome_aluno, ra_aluno, email_aluno) 
	VALUES('Vitor Augusto' , 1083216779, 'vitor@gmail.com'),
		  ('Marcelo Augusto' , 7971245432, 'marcelo@gmail.com'),
		  ('Héctor Dalgliesh ', 1034986652, 'dalgliesh@gmail.com'),
		  ('Demis Russo', 1034566889, 'demis.russo@gmail.com'),
		  ('Denzel Washigton' , 1024565329, 'denwas@gmail.com');

SELECT*FROM tb_aluno;

-- apagando a tabela tb_aluno 
DROP TABLE tb_aluno

-- alterando a coluna ra_aluno do tipo INT para o tipo BIGINT
ALTER TABLE tb_aluno 
ALTER COLUMN ra_aluno BIGINT; 

SELECT CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'tb_aluno' AND COLUMN_NAME = 'ra_aluno';

ALTER TABLE tb_aluno DROP CONSTRAINT UQ__tb_aluno__367FAD357DF86BDC;





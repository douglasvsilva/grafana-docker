CREATE DATABASE DemoDB;
GO

USE DemoDB;
GO

CREATE TABLE dbo.Cliente(
 Id int NOT NULL IDENTITY(1,1),
 Nome varchar(200) NOT NULL,
 Email varchar(100) NOT NULL,
 CONSTRAINT PK_Client PRIMARY KEY (Id)
);
GO

INSERT INTO dbo.Cliente VALUES 
('Carlos','carlos@gmail.com'),
('Maria','maria@outlook.com'),
('Joao','joao@yahoo.com.br');
GO

-- Criar um usuário
CREATE LOGIN [user_demo] WITH PASSWORD = 'Password@123';
GO
CREATE USER [user_demo] FOR LOGIN [user_demo];
GO

-- Conceder permissões ao usuário
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Cliente TO [user_demo];
GO

GRANT CREATE TABLE, ALTER, VIEW DEFINITION ON DATABASE::DemoDB TO [user_demo];
GO

create database bd_atv_Faculdade
go

use bd_atv_Faculdade
go

-------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE aluno(
ra_aluno				VARCHAR(7) NOT NULL,
cpf_aluno				VARCHAR(14) NOT NULL,
nome_aluno				VARCHAR(150) NOT NULL,
email_aluno				VARCHAR(100) NOT NULL,
data_nascimento			DATETIME NOT NULL,
idade_aluno				INT,
fone_contato			CHAR(11) NOT NULL,
end_cidade				VARCHAR(50) NOT NULL,
end_uf					CHAR(2) NOT NULL,
end_tipo_complemento	VARCHAR(100) NOT NULL,
end_logradouro			VARCHAR(100) NOT NULL,
end_cep					VARCHAR(10) NOT NULL,
end_numero				VARCHAR(8) NOT NULL,
end_bairro				VARCHAR(100) NOT NULL
CONSTRAINT PK_ra_aluno PRIMARY KEY (ra_aluno)
)
GO


CREATE TABLE disciplina(
sigla_disciplina	VARCHAR(15) NOT NULL,
nome_disciplina		VARCHAR(100) NOT NULL,
carga_horaria		INT NOT NULL,
CONSTRAINT PK_sigla_disciplana PRIMARY KEY (sigla_disciplina)
)
GO

CREATE TABLE aluno_disciplina(
ra_aluno			VARCHAR(7) NOT NULL,
sigla_disciplina	VARCHAR(15) NOT NULL,
nota1				DECIMAL(10,2),
nota2				DECIMAL(10,2),
substitutiva		DECIMAL(10,2),
media				DECIMAL(10,2),
falta				INT,
status_disc_aluno	CHAR(1) ,
ano					VARCHAR(4) NOT NULL,
semestre			CHAR(2) NOT NULL
CONSTRAINT FK_ra_aluno FOREIGN KEY (ra_aluno) REFERENCES aluno(ra_aluno),
CONSTRAINT FK_disciplina_aluno FOREIGN KEY (sigla_disciplina) REFERENCES disciplina(sigla_disciplina)
)
GO

--------------------------

create trigger verifica_media
on aluno_disciplina
FOR INSERT
AS
BEGIN
	DECLARE @sigla_disciplina   varchar(15),
			@ra_aluno			varchar(7),
			@nota1				DECIMAL(10,2),
			@nota2				DECIMAL(10,2),
			@substitutiva		DECIMAL(10,2),
			@media				DECIMAL(10,2)

				select @sigla_disciplina = sigla_disciplina, @ra_aluno = ra_aluno, @nota1 = nota1, @nota2 = nota2, @substitutiva = substitutiva from aluno_disciplina

				set @media =  (@nota1 +  @nota2) / 2;

				if @media < 5
				begin
					if @nota1 > @nota2
					set @media =  (@nota1 + @substitutiva) / 2
					else
					set @media = (@nota2 + @substitutiva) /2 
				end

	

				 update aluno_disciplina
				 set media = @media
				 where ra_aluno = @ra_aluno and sigla_disciplina = @sigla_disciplina;
end
go
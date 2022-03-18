----- Procedure teste -----
CREATE PROCEDURE buscaDisciplina
	@SiglaDisciplina VARCHAR(100)

AS

SET @SiglaDisciplina = '%' + @SiglaDisciplina + '%';

SELECT al.ra_aluno, a.nome_aluno, al.sigla_disciplina, al.ano
		FROM aluno_disciplina al
		INNER JOIN aluno a on (a.ra_aluno = al.ra_aluno)
	WHERE sigla_disciplina like @SiglaDisciplina;

----- Procedure select 1 -----

ALTER PROCEDURE situacao_aluno_ano
	@ano VARCHAR(6),
	@siglaDisciplina VARCHAR(100)

AS

SET @ano = '%' + @ano + '%'
SET @SiglaDisciplina = '%' + @SiglaDisciplina + '%';


SELECT al.ra_aluno, a.nome_aluno, al.sigla_disciplina, d.nome_disciplina, al.ano, al.nota1, al.nota2, al.substitutiva, al.media, al.status_disc_aluno
		FROM aluno_disciplina al
		INNER JOIN aluno a on (a.ra_aluno = al.ra_aluno)
		INNER JOIN disciplina d on (d.sigla_disciplina = al.sigla_disciplina)
	WHERE ano like @ano and
		  al.sigla_disciplina like @SiglaDisciplina;



----- Procedure select 2 -----
create PROCEDURE nota_falta_media_aluno
	@ano VARCHAR(6),
	@siglaDisciplina VARCHAR(100),
	@nomeAluno	varchar(150),
	@semestre char(2)
as
SET @ano = '%' + @ano + '%'
SET @SiglaDisciplina = '%' + @SiglaDisciplina + '%'
SET @nomeAluno = '%' + @nomeAluno + '%'
SET @semestre = '%' + @semestre + '%'


SELECT al.ra_aluno, a.nome_aluno, d.nome_disciplina, al.semestre, al.nota1, al.nota2, al.substitutiva, al.media, al.falta, al.status_disc_aluno
	from aluno_disciplina al
	INNER JOIN aluno a on (a.ra_aluno = al.ra_aluno)
	INNER JOIN disciplina d on (d.sigla_disciplina = al.sigla_disciplina)
	where a.nome_aluno like @nomeAluno and
		  al.ano like @ano and
		  al.sigla_disciplina like @SiglaDisciplina and
		  al.semestre like @semestre;

	drop procedure nota_falta_media_aluno;
	exec nota_falta_media_aluno '2021', '%', 'Willian Proni';

	select ra_aluno, ano, sigla_disciplina from aluno_disciplina

----- Procedure select 3 -----
create PROCEDURE alunos_reprovados
	@ano varchar(6)
as
	set @ano = '%' + @ano + '%'

select a.nome_aluno, al.sigla_disciplina, d.nome_disciplina, al.nota1, al.nota2, al.substitutiva, al.media, al.status_disc_aluno
	from aluno_disciplina al
	INNER JOIN aluno a on (a.ra_aluno = al.ra_aluno)
	INNER JOIN disciplina d on (d.sigla_disciplina = al.sigla_disciplina)
	where	ano like @ano and
			status_disc_aluno = 'R'

exec alunos_reprovados '2021';


-- Procedires verificar Status Disciplina --

create PROCEDURE status_aluno
		@ra_aluno varchar(7),
		@sigla_disciplina varchar(15)
as

begin
	DECLARE @media DECIMAL(10,2),
			@carga_horaria int,
			@falta int,
			@maxfalta int


	select @media = media, @falta = falta from aluno_disciplina where ra_aluno = @ra_aluno and sigla_disciplina = @sigla_disciplina
	select @carga_horaria = carga_horaria from disciplina where sigla_disciplina = @sigla_disciplina
	
	set @maxfalta = @carga_horaria / 4

	if @media < 5 
		begin
	
			print 'Aluno Reprovado'
			update aluno_disciplina
			set status_disc_aluno = 'R'
			where ra_aluno = @ra_aluno and sigla_disciplina = @sigla_disciplina
		end
	else
	begin
		if @falta > @maxfalta
		begin
			print 'Reprovado por falta, alunodependência'
			update aluno_disciplina
			set status_disc_aluno = 'D'
			where ra_aluno = @ra_aluno and sigla_disciplina = @sigla_disciplina
		end
		else
		begin
			print 'Aluno Aprovado'
			update aluno_disciplina
			set status_disc_aluno = 'A'
			where ra_aluno = @ra_aluno and sigla_disciplina = @sigla_disciplina
		end
    end
end

exec status_aluno '2002401', 'MMD001'

---- Executaveis

exec situacao_aluno_ano '2020', 'IAC001'; -- Quais são alunos de uma determinada disciplina ministrada no ano de 2021, com suas notas, faltas e Situação Final.

exec nota_falta_media_aluno '2021', '%', 'Pestana', '1'; -- Quais são as notas, faltas e situação final (Boletim) de um aluno em todas as disciplinas por ele cursadas no ano de 2021, no segundo semestre. 

exec alunos_reprovados '2021'; -- Quais são os alunos reprovados por nota (média inferior a cinco) no ano de 2021 e, o nome das disciplinas em que eles reprovaram, com suas notas e média

exec status_aluno '2002401', 'IAC001' -- definir status do alunos em uma determinada Disciplina



--OBS Status_disc_aluno 

--			A - Aprovado
--			R - Reprovado
--			D - Dependência




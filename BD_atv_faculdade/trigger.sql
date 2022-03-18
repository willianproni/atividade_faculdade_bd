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

				if @media < 5.00
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




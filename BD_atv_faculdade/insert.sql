insert into aluno (ra_aluno, cpf_aluno, nome_aluno, email_aluno, data_nascimento, idade_aluno, fone_contato, end_cidade, end_uf, end_logradouro, end_tipo_complemento, end_numero, end_bairro, end_cep)
values
		('2002401', '794.041.000-80', 'Willian Proni',		'wifepro@hotmail.com',		convert (varchar, '30/06/2000', 1),  (DATEDIFF(DAY, '30/06/2002', GETDATE())/ 365.25), '16981264738', 'Taquaritinga', 'SP', 'Rua Newton Prado',		'Casa',		'534',  'Centro', '15900004'),
		('2002402', '676.728.530-74', 'Amanda Silva',		'nayronh345@hotmail.com',	convert (varchar, '20/03/1995', 1),  (DATEDIFF(DAY, '20/03/1995', GETDATE())/ 365.25) ,'16992834856', 'Monte Alto',   'SP',	'Rua Tiradentes',		'Casa',		'623',  'Centro', '17900234'),
		('2002403', '426.347.910-62', 'Guilherme Vieira',   'guilhermem@hotmail.com',	convert (varchar, '10/04/2000', 1),  (DATEDIFF(DAY, '10/04/2000', GETDATE())/ 365.25) ,'16992834856', 'Araraquara',   'SP', 'Rua Gavião Peixoto',	'Casa',		'1000', 'Centro', '18600032'),
		('2002404', '558.440.470-52', 'Fabio Papini',		'fabiopapini@hotmail.com',  convert (varchar, '23/01/1990', 1),  (DATEDIFF(DAY, '23/01/1990', GETDATE())/ 365.25) ,'16992124856', 'Jaboticabal',  'SP', 'Rua Rui Barbosa',		'Casa',		'623',  'Centro', '17900238'),
		('2002405', '617.248.140-10', 'Felipe Pestana',		'felipestana@hotmail.com',  convert (varchar, '20/09/1991', 1),  (DATEDIFF(DAY, '20/09/1991', GETDATE())/ 365.25) ,'16992838756', 'Matão',		  'SP', 'Rua 13 de Maio',		'Casa',		'623',  'Centro', '17900299');

insert into disciplina (sigla_disciplina, nome_disciplina, carga_horaria)
values
		('AAG001', 'Administração Geral', 40),
		('IAC001', 'Arquitetura e Organização de Computadores', 40),
		('IAL002', 'Algoritmos e Lógica de Programação', 40),
		('ILM001', 'Programação em Microinformática', 40),
		('ISI002', 'Sistemas de Informação', 40),
		('LIN100', 'Inglês I', 20),
		('LPO001', 'Comunicação e Expressão', 40),
		('MMD001', 'Matemática Discreta', 40);

insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
	--Aluno Willian Proni
		--1 Semestre 2020
		('2002401', 'AAG001', '2020', '1', 12, 8, 5, NULL, 'A');

insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'IAC001', '2020', '1', 3, 3, 4, NULL, 'R');
insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'IAL002', '2020', '1', 4, 4, 9, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'ILM001', '2020', '1', 4, 8, 8, NULL, 'A');

		--2 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'IAC001', '2021', '2', 2, 5, 7, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'LIN100', '2021', '2', 8, 6, 6, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'LPO001', '2021', '2', 6, 5, 5, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002401', 'MMD001', '2021', '2', 4, 4, 6, NULL, 'A');
	
	--Aluno Amanda Silva
		--1 Semestre 2021
				insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'ISI002', '2021', '1', 8, 2, 3, 5, 'R');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'LIN100', '2021', '1', 8, 5, 5,NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'LPO001', '2021', '1', 4, 6, 7,NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'ILM001', '2021', '1', 0, 4, 3, 8, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'MMD001', '2021', '1', 4, 10, 10, NULL, 'A');


		--2 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'ISI002', '2021', '2', 4, 4, 6, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'IAC001', '2021', '2', 2, 5, 5, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'IAL002', '2021', '2', 16, 3, 7, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002402', 'ILM001', '2021', '2', 0, 10, 9.50, NULL, 'A');

	--Aluno Guilherme Vieira
		--1 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'AAG001', '2020', '1', 0, 9, 8, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'IAC001', '2020', '1', 4, 1, 3, 4, 'R');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'IAL002', '2020', '1', 0, 8, 8, NULL, 'A');
		--2 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'IAC001', '2021', '2', 0, 4, 7, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'LIN100', '2021', '2', 0, 5, 5, NULL,'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'LPO001', '2021', '2', 0, 5, 6, NULL, 'A');
		--3 Semestre 2022
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'ILM001', '2022', '3', 0, NULL, NULL, NULL, NULL);
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002403', 'MMD001', '2022', '3', 0, NULL, NULL, NULL, NULL);

	--Aluno Fabio Papini
		--1 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'AAG001', '2021', '2', 4, 8, 8, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'IAC001', '2021', '2', 4, 7, 9, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'IAL002', '2021', '2', 4, 5.50, 4.50, NULL, 'A');
		--2 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'ILM001', '2021', '2', 0, 7, 6, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'LIN100', '2021', '2', 0, 5, 5, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'LPO001', '2021', '2', 0, 4, 7, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		--3 Semestre 2021
		('2002404', 'LPO001', '2022', '3', 0, NULL,NULL,NULL, NULL);
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002404', 'MMD001', '2022', '3', 0, NULL,NULL,NULL, NULL);

	--Aluno Felipe Pestana
		--1 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'AAG001', '2021', '1', 0, 5, 5, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'IAC001', '2021', '1', 0, 7, 6, NULL, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'IAL002', '2021', '1', 0, 1.8, 4, 5, 'A');
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'ILM001', '2021', '1', 0, 7, 8, NULL, 'A');
		--2 Semestre 2021
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'IAL002', '2021', '2', 0, NULL,NULL,NULL, NULL);
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'LPO001', '2021', '2', 0, NULL,NULL,NULL, NULL);
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'LPO001', '2021', '2', 0, NULL,NULL,NULL, NULL);
		insert into aluno_disciplina (ra_aluno, sigla_disciplina, ano, semestre, falta, nota1, nota2, substitutiva, status_disc_aluno)
values
		('2002405', 'MMD001', '2021', '2', 0, NULL,NULL,NULL, NULL);

		
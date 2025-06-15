SELECT * FROM public.oficina
ORDER BY id_oficina ASC;

INSERT INTO oficina(nome_oficina, vagas, data_realizacao, local)
VALUES
	('crochê', 'crochê ponto basico, correntinha, ponto alto,
    ponto alto duplo, tapete basico e aprender a ler grafico',
    '4 vagas disponiveis', '2025-06-10', 'casa de quem ofertar o curso'
)
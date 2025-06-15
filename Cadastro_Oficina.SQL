CREATE TABLE curso(
    id_oficina INT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    descrição TEXT,
    vagas INT,
    data_realização DATE NOT NULL,
    local VARCHAR(200) NOT NULL
);


CREATE TABLE usuario(
    id_usuario INT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    cpf VARCHAR (14) NOT NULL UNIQUE,
    email VARCHAR (100),
    telefone VARCHAR (20)
);

CREATE TABLE inscricao (
    id_inscricao INT PRIMARY KEY UNIQUE,
    id_usuario INT NOT NULL,
    id_oficina INT NOT NULL,
    data_inscricao DATE NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario),
    CONSTRAINT fk_oficina FOREIGN KEY (id_oficina) REFERENCES oficina (id_oficina),
    CONSTRAINT uc_inscricao UNIQUE (id_usuario, id_oficina)
);

---inserir oficinas---
INSERT INTO oficina (curso, descrição, vagas, data_realização, local)
VALUES('crochê',
    'crochê ponto basico, correntinha, ponto alto,
    ponto alto duplo, tapete basico e aprender a ler grafico',
    '4 vagas disponiveis',
    '2025-06-10',
    'casa de quem ofertar o curso'
);

INSERT INTO usuario (nome, cpf, email, telefone)
VALUES ('Sofia Mara', '000.000.000-00', 
'sofiamara@email.com', '67 99999-9999');

INSERT INTO inscricao (id_usuario, id_oficina, data_inscricao)
VALUES 
(1, 1, '2025-06-12'),
(2, 2, '2025-06-12');

  ---atualização---
UPDATE oficina
SET local = 'Assentamento Conceição'
WHERE id_oficina = 1;

-- Remover uma inscrição
DELETE FROM inscricao
WHERE id_usuario = 1 AND id_oficina = 1;

---Listar usuarios inscritos em cada oficina---
SELECT o.curso, p.nome, i.data_inscricao
FROM inscricao i
JOIN oficina o ON i.id_oficina = o.id_oficina
JOIN usuario p ON i.id_usuario = p.id_usuario;

---Número de usuario por oficina---
SELECT o.curso, COUNT(i.id_usuario) AS total_inscritos
FROM oficina o
LEFT JOIN inscricao i ON o.id_oficina = i.id_oficina
GROUP BY o.curso;

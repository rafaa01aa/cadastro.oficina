CREATE TABLE oficina(
    id_oficina SERIAL PRIMARY KEY,
    nome_oficina VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_realizacao DATE NOT NULL,
    local VARCHAR(200) NOT NULL
);

CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE inscricao (
    id_inscricao SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_oficina INT NOT NULL,
    data_inscricao DATE NOT NULL,
	local VARCHAR (100) NOT NULL
)

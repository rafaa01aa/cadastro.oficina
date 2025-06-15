CREATE TABLE oficina(
    id_oficina INT PRIMARY KEY,
    nome_oficina VARCHAR (100) NOT NULL,
    descrição TEXT,
    data_realização DATE NOT NULL,
    local VARCHAR(200) NOT NULL
);


CREATE TABLE usuario(
    id_usuario INT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    cpf VARCHAR (14) NOT NULL UNIQUE,
    email VARCHAR (100),
    telefone VARCHAR (20)
)

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY,
    nome VARCHAR(100),
    cnpj VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Contrato (
    id_contrato INT PRIMARY KEY,
    numero VARCHAR(50),
    data_empenho DATE,
    prazo_entrega DATE,
    status VARCHAR(20),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Produto (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    unidade_medida VARCHAR(20)
);

CREATE TABLE Produto_Contrato (
    id_produto_contrato INT PRIMARY KEY,
    id_contrato INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY,
    data_entrega DATE,
    entregue BOOLEAN,
    observacao TEXT,
    id_contrato INT,
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato)
);

CREATE TABLE Relatorio (
    id_relatorio INT PRIMARY KEY,
    data_geracao DATE,
    tipo VARCHAR(50),
    id_contrato INT,
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100),
    login VARCHAR(50),
    senha VARCHAR(100),
    nivel_acesso VARCHAR(20)
);

CREATE TABLE Backup (
    id_backup INT PRIMARY KEY,
    data_backup TIMESTAMP
);

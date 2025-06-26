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

INSERT INTO Fornecedor VALUES (1, 'EMPRESA ALFA', '01.234.567/0001-01', 'empresa_alfa@gmail.com');
INSERT INTO Fornecedor VALUES (2, 'EMPRESA BRAVO', '02.234.567/0001-02', 'empresa_bravo@gmail.com');
INSERT INTO Fornecedor VALUES (3, 'EMPRESA CHARLIE', '03.234.567/0001-03', 'empresa_charlie@gmail.com');

INSERT INTO Produto VALUES (1, 'Notebook', 'Notebook Dell 16GB RAM', 'unidade');
INSERT INTO Produto VALUES (2, 'Rodo', 'Rodo cabo de madeira', 'unidade');
INSERT INTO Produto VALUES (3, 'Panela', 'Panela de Ferro', 'unidade');


UPDATE Fornecedor SET email = 'empresa_alfa@hotmail.com' WHERE id_fornecedor = 1;

DELETE FROM Produto WHERE id_produto = 3;
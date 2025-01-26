CREATE DATABASE E_COMMMERCE;
USE E_COMMMERCE;

CREATE TABLE Cliente (
  idCliente INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(15) NULL,
  Nome_Meio VARCHAR(15) NULL,
  Sobrenome VARCHAR(20) NULL,
  Tipo_Cliente ENUM('CPF', 'CNPJ') NOT NULL,
  CNPJ CHAR(14) NULL,
  CPF CHAR(11) NULL,
  Endereço VARCHAR(45) NULL,
  E_mail VARCHAR(45) NULL,
  Telefone VARCHAR(45) NULL,
  Data_Nascimento DATE NOT NULL,
  PRIMARY KEY (idCliente),
  UNIQUE INDEX CPF_UNIQUE (CPF ASC) VISIBLE,
  UNIQUE INDEX CNPJ_UNIQUE (CNPJ ASC) VISIBLE);
  
ALTER TABLE Cliente AUTO_INCREMENT= 1;

-- Pedido
CREATE TABLE Pedido (
  idPedido INT NOT NULL AUTO_INCREMENT,
  Status_Pedido ENUM('Enviado', 'Entregue', 'Em andamento', 'Processamento') NULL DEFAULT 'Processamento',
  Descrição_Pedido VARCHAR(45) NULL,
  Frete FLOAT NULL,
  Data_Pedido VARCHAR(45) NULL,
  Valor_Total VARCHAR(45) NULL,
  Cliente_idCliente INT NOT NULL,
  PRIMARY KEY (idPedido, Cliente_idCliente),
  INDEX fk_Pedido_Cliente1_idx (Cliente_idCliente ASC),
  CONSTRAINT fk_Pedido_Cliente1
    FOREIGN KEY (Cliente_idCliente)
    REFERENCES Cliente (idCliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE);


-- Produto
CREATE TABLE Produto (
  idProduto INT NOT NULL AUTO_INCREMENT,
  Categoria VARCHAR(45) NULL,
  Descrição VARCHAR(45) NULL,
  Valor FLOAT NOT NULL,
  PRIMARY KEY (idProduto)
);

-- Fornecedor
CREATE TABLE Fornecedor (
  idFornecedor INT NOT NULL AUTO_INCREMENT,
  Razão_Social VARCHAR(45) NOT NULL,
  CNPJ VARCHAR(45) NOT NULL,
  Endereço VARCHAR(45) NULL,
  Estado VARCHAR(45) NULL,
  PRIMARY KEY (idFornecedor),
  UNIQUE INDEX Razão_Social_UNIQUE (Razão_Social ASC),
  UNIQUE INDEX CNPJ_UNIQUE (CNPJ ASC)
);

-- Terceiro_Vendedor
CREATE TABLE Terceiro_Vendedor (
  idTerceiro_Vendedor INT NOT NULL AUTO_INCREMENT,
  Razao_Social VARCHAR(45) NOT NULL,
  CNPJ VARCHAR(45) NOT NULL,
  Endereco VARCHAR(45) NULL,
  Estado VARCHAR(45) NULL,
  PRIMARY KEY (idTerceiro_Vendedor),
  UNIQUE (Razao_Social),
  UNIQUE (CNPJ)
);


-- Produto_Estoque
CREATE TABLE Produto_Estoque (
  Produto_idProduto INT NOT NULL,
  Quantidade_Produto INT NOT NULL,
  Status ENUM('Disponivel', 'Esgotado') NULL DEFAULT 'Disponivel',
  PRIMARY KEY (Produto_idProduto),
  FOREIGN KEY (Produto_idProduto)
    REFERENCES Produto (idProduto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Relação_Produto_Pedido
CREATE TABLE Relacao_Produto_Pedido (
  Produto_idProduto INT NOT NULL,
  Pedido_idPedido INT NOT NULL,
  Pedido_Cliente_idCliente INT NOT NULL,
  PRIMARY KEY (Produto_idProduto, Pedido_idPedido, Pedido_Cliente_idCliente),
  FOREIGN KEY (Produto_idProduto)
    REFERENCES Produto (idProduto)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  FOREIGN KEY (Pedido_idPedido, Pedido_Cliente_idCliente)
    REFERENCES Pedido (idPedido, Cliente_idCliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Pagamento
CREATE TABLE Pagamento (
  idPagamento INT NOT NULL,
  Tipo_Pagamento VARCHAR(45) NULL,
  Valor_pagamento VARCHAR(45) NULL,
  Data_pagamento VARCHAR(45) NULL,
  Pedido_Cliente_idCliente INT NOT NULL,
  Pedido_idPedido INT NOT NULL,
  PRIMARY KEY (idPagamento, Pedido_Cliente_idCliente, Pedido_idPedido),
  FOREIGN KEY (Pedido_idPedido, Pedido_Cliente_idCliente)
    REFERENCES Pedido (idPedido, Cliente_idCliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Entrega_Pedidos
CREATE TABLE Entrega_Pedidos (
  idEntrega INT NOT NULL,
  Transportadora VARCHAR(45) NULL,
  Codigo_Rastreamento VARCHAR(45) NULL,
  Status_Entrega VARCHAR(45) NULL,
  Data_Envio VARCHAR(45) NULL,
  Data_Entrega VARCHAR(45) NULL,
  Tentativas_Entrega VARCHAR(45) NULL,
  Pedido_idPedido INT NOT NULL,
  Pedido_Cliente_idCliente INT NOT NULL,
  PRIMARY KEY (idEntrega, Pedido_idPedido, Pedido_Cliente_idCliente),
  FOREIGN KEY (Pedido_idPedido, Pedido_Cliente_idCliente)
    REFERENCES Pedido (idPedido, Cliente_idCliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Produto_Fornecedor (
  Produto_idProduto INT NOT NULL,
  Fornecedor_idFornecedor INT NOT NULL,
  PRIMARY KEY (Produto_idProduto, Fornecedor_idFornecedor),
  FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
  FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

CREATE TABLE Produto_Terceiro_Vendedor (
  Produto_idProduto INT NOT NULL,
  Terceiro_Vendedor_idTerceiro_Vendedor INT NOT NULL,
  PRIMARY KEY (Produto_idProduto, Terceiro_Vendedor_idTerceiro_Vendedor),
  FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto),
  FOREIGN KEY (Terceiro_Vendedor_idTerceiro_Vendedor) REFERENCES Terceiro_Vendedor(idTerceiro_Vendedor)
);



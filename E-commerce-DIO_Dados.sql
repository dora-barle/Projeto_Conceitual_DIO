USE E_COMMMERCE;

INSERT INTO Cliente (Nome, Nome_Meio, Sobrenome, Tipo_Cliente, CPF, CNPJ, Endereço, E_mail, Telefone, Data_Nascimento)
VALUES
('Ana', 'Maria', 'Silva', 'CPF', '12345678901', NULL, 'Rua A, 123, São Paulo - SP', 'ana.silva@zwy.com', '11 98765-4321', '1985-07-20'),
('Carlos', 'Eduardo', 'Santos', 'CNPJ', NULL, '12345678000195', 'Avenida B, 456, Campinas - SP', 'carlos.santos@zwy.com', '19 98765-1234', '1990-03-15'),
('Joana', 'Fernanda', 'Oliveira', 'CPF', '32165498765', NULL, 'Rua C, 789, São Paulo - SP', 'joana.oliveira@zwy.com', '11 97531-2468', '1983-11-10'),
('Felipe', 'André', 'Pereira', 'CNPJ', NULL, '98765432000188', 'Rua D, 135, São Paulo - SP', 'felipe.pereira@zwy.com', '11 96384-0257', '1992-12-05'),
('Larissa', 'Almeida', 'Costa', 'CPF', '65498732100', NULL, 'Avenida E, 456, São Bernardo do Campo - SP', 'larissa.costa@zwy.com', '11 97651-3475', '1987-06-30'),
('Lucas', 'Henrique', 'Gomes', 'CNPJ', NULL, '13579246000150', 'Rua F, 567, Osasco - SP', 'lucas.gomes@zwy.com', '11 96741-2589', '1995-01-20'),
('Mariana', 'Carla', 'Rodrigues', 'CPF', '24681357902', NULL, 'Rua G, 678, São Paulo - SP', 'mariana.rodrigues@zwy.com', '11 97546-9870', '1994-09-15'),
('Thiago', 'Luis', 'Barbosa', 'CPF', '86420975310', NULL, 'Rua H, 789, Guarulhos - SP', 'thiago.barbosa@zwy.com', '11 98021-3245', '1986-02-12'),
('Raquel', 'Fernanda', 'Machado', 'CNPJ', NULL, '97531086000160', 'Avenida I, 123, São Paulo - SP', 'raquel.machado@zwy.com', '11 91234-5678', '1991-08-18'),
('Eduardo', 'Augusto', 'Pinto', 'CPF', '12457896320', NULL, 'Rua J, 456, São Paulo - SP', 'eduardo.pinto@zwy.com', '11 98765-6789', '1988-10-25');

INSERT INTO Fornecedor (Razão_Social, CNPJ, Endereço, Estado)
VALUES
('Fornecedor Tech Ltda', '12345678000195', 'Rua K, 101, São Paulo - SP', 'SP'),
('Eletrônicos Brasil S.A.', '98765432000176', 'Avenida L, 200, São Paulo - SP', 'SP'),
('Produtos de Informática LTDA', '45678912000180', 'Rua M, 250, São Paulo - SP', 'SP'),
('Importados Eletrônicos Ltda', '54321098000122', 'Rua N, 123, São Paulo - SP', 'SP'),
('Conectados Comércio Ltda', '98765431000123', 'Avenida O, 450, São Paulo - SP', 'SP');

INSERT INTO Terceiro_Vendedor (Razao_Social, CNPJ, Endereco, Estado)
VALUES
('Importados Eletrônicos Ltda', '54321098000122', 'Rua N, 123, São Paulo - SP', 'SP'),
('Conectados Comércio Ltda', '98765431000123', 'Avenida O, 450, São Paulo - SP', 'SP');

INSERT INTO Terceiro_Vendedor (Razao_Social, CNPJ, Endereco, Estado)
VALUES
('Vendedor A', '12345987000123', 'Rua P, 345, São Paulo - SP', 'SP'),
('Vendedor B', '54321678000145', 'Rua Q, 123, São Paulo - SP', 'SP'),
('Vendedor C', '98745632000176', 'Avenida R, 567, São Paulo - SP', 'SP'),
('Vendedor D', '65432109800198', 'Rua S, 234, São Paulo - SP', 'SP'),
('Vendedor E', '32198745000121', 'Rua T, 678, São Paulo - SP', 'SP');

INSERT INTO Produto (Categoria, Descrição, Valor)
VALUES
('Eletrônicos', 'Celular Samsung Galaxy S21', 3200.00),
('Eletrônicos', 'Notebook Dell Inspiron 15', 3500.00),
('Eletrônicos', 'Fone de Ouvido Bluetooth JBL', 250.00),
('Eletrônicos', 'Teclado Mecânico Logitech', 500.00),
('Eletrônicos', 'Mouse Gamer Logitech G402', 150.00),
('Eletrônicos', 'Pendrive Kingston 32GB', 40.00),
('Eletrônicos', 'Smartwatch Xiaomi Mi Band 5', 250.00),
('Eletrônicos', 'Fone de Ouvido Sony WH-1000XM4', 1600.00),
('Eletrônicos', 'Monitor LG UltraWide 29"', 1500.00),
('Eletrônicos', 'Tablet Samsung Galaxy Tab S6', 2000.00);


INSERT INTO Pedido (Status_Pedido, Descrição_Pedido, Frete, Data_Pedido, Valor_Total, Cliente_idCliente)
VALUES
('Enviado', 'Pedido de produtos eletrônicos', 50.00, '2024-01-10', '5000.00', 1),
('Entregue', 'Pedido de tecnologia', 30.00, '2024-01-11', '3700.00', 2),
('Em andamento', 'Pedido de celular e acessórios', 40.00, '2024-01-12', '2200.00', 3),
('Processamento', 'Pedido de notebook', 60.00, '2024-01-13', '3500.00', 4),
('Em andamento', 'Pedido de fones e mouse', 45.00, '2024-01-14', '800.00', 5),
('Processamento', 'Pedido de monitor e teclado', 70.00, '2024-01-15', '2000.00', 6),
('Enviado', 'Pedido de pendrive e smartwatch', 25.00, '2024-01-16', '300.00', 7),
('Entregue', 'Pedido de fone de ouvido', 20.00, '2024-01-17', '1600.00', 8),
('Em andamento', 'Pedido de tablet e acessórios', 50.00, '2024-01-18', '2250.00', 9),
('Processamento', 'Pedido de acessórios de informática', 40.00, '2024-01-19', '2200.00', 10);

INSERT INTO Relacao_Produto_Pedido (Produto_idProduto, Pedido_idPedido, Pedido_Cliente_idCliente)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

INSERT INTO Pagamento (Tipo_Pagamento, Valor_pagamento, Data_pagamento, Pedido_Cliente_idCliente, Pedido_idPedido)
VALUES
('Cartão de Crédito', '5000.00', '2024-01-11', 1, 1),
('Boleto', '3700.00', '2024-01-12', 2, 2),
('Transferência Bancária', '2200.00', '2024-01-13', 3, 3),
('Cartão de Crédito', '3500.00', '2024-01-14', 4, 4),
('Boleto', '800.00', '2024-01-15', 5, 5),
('Transferência Bancária', '2000.00', '2024-01-16', 6, 6),
('Cartão de Crédito', '300.00', '2024-01-17', 7, 7),
('Boleto', '1600.00', '2024-01-18', 8, 8),
('Transferência Bancária', '2250.00', '2024-01-19', 9, 9),
('Cartão de Crédito', '2200.00', '2024-01-20', 10, 10);


INSERT INTO Entrega_Pedidos (idEntrega, Transportadora, Codigo_Rastreamento, Status_Entrega, Data_Envio, Data_Entrega, Pedido_idPedido, Estado_Entrega)
VALUES
(1, 'Transportadora XYZ', 'XYZ123456', 'Em Trânsito', '2024-01-11', '2024-01-15', 1, 'SP'),
(2, 'Transportadora ABC', 'ABC987654', 'Entregue', '2024-01-12', '2024-01-14', 2, 'SP'),
(3, 'Transportadora XYZ', 'XYZ987654', 'Em Trânsito', '2024-01-13', '2024-01-17', 3, 'SP'),
(4, 'Transportadora DEF', 'DEF123456', 'Em Trânsito', '2024-01-14', '2024-01-16', 4, 'MG'),
(5, 'Transportadora ABC', 'ABC123456', 'Entregue', '2024-01-15', '2024-01-18', 5, 'RJ'),
(6, 'Transportadora XYZ', 'XYZ654321', 'Em Trânsito', '2024-01-16', '2024-01-19', 6, 'SP'),
(7, 'Transportadora DEF', 'DEF987654', 'Em Trânsito', '2024-01-17', '2024-01-20', 7, 'SP'),
(8, 'Transportadora XYZ', 'XYZ567890', 'Entregue', '2024-01-18', '2024-01-19', 8, 'RS'),
(9, 'Transportadora DEF', 'DEF765432', 'Em Trânsito', '2024-01-19', '2024-01-22', 9, 'SP'),
(10, 'Transportadora ABC', 'ABC543210', 'Em Trânsito', '2024-01-20', '2024-01-25', 10, 'SP');

INSERT INTO Produto_Estoque (Produto_idProduto, Quantidade_Produto, Status)
VALUES
(1, 50, 'Disponivel'),  -- Celular Samsung Galaxy S21
(2, 30, 'Disponivel'),  -- Notebook Dell Inspiron 15
(3, 100, 'Disponivel'), -- Fone de Ouvido Bluetooth JBL
(4, 75, 'Disponivel'),  -- Teclado Mecânico Logitech
(5, 150, 'Disponivel'), -- Mouse Gamer Logitech G402
(6, 200, 'Disponivel'), -- Pendrive Kingston 32GB
(7, 120, 'Disponivel'), -- Smartwatch Xiaomi Mi Band 5
(8, 30, 'Esgotado'),    -- Fone de Ouvido Sony WH-1000XM4
(9, 40, 'Disponivel'),  -- Monitor LG UltraWide 29"
(10, 60, 'Disponivel'); -- Tablet Samsung Galaxy Tab S6

INSERT INTO Produto_Fornecedor (Produto_idProduto, Fornecedor_idFornecedor)
VALUES
(1, 1),  -- 'Celular Samsung Galaxy S21' fornecido por 'Fornecedor Tech Ltda'
(2, 2),  -- 'Notebook Dell Inspiron 15' fornecido por 'Eletrônicos Brasil S.A.'
(3, 3);  -- 'Fone de Ouvido Bluetooth JBL' fornecido por 'Produtos de Informática LTDA'

INSERT INTO Produto_Terceiro_Vendedor (Produto_idProduto, Terceiro_Vendedor_idTerceiro_Vendedor)
VALUES
(8, 1),  -- 'Monitor LG UltraWide 29"' vendido por 'Vendedor A'
(9, 2),  -- 'Tablet Samsung Galaxy Tab S6' vendido por 'Vendedor B'
(10, 3); -- 'Fone de Ouvido Sony WH-1000XM4' vendido por 'Vendedor C'

INSERT INTO Produto_Fornecedor (Produto_idProduto, Fornecedor_idFornecedor)
VALUES
(4, 1),  -- 'Teclado Mecânico Logitech' fornecido por 'Fornecedor Tech Ltda'
(5, 4),  -- 'Mouse Gamer Logitech G402' fornecido por 'Importados Eletrônicos Ltda'
(6, 5),  -- 'Pendrive Kingston 32GB' fornecido por 'Conectados Comércio Ltda'
(7, 2);  -- 'Smartwatch Xiaomi Mi Band 5' fornecido por 'Eletrônicos Brasil S.A.'

INSERT INTO Produto_Terceiro_Vendedor (Produto_idProduto, Terceiro_Vendedor_idTerceiro_Vendedor)
VALUES
(4, 4),  -- 'Teclado Mecânico Logitech' vendido por 'Vendedor D'
(5, 5),  -- 'Mouse Gamer Logitech G402' vendido por 'Vendedor E'
(6, 1),  -- 'Pendrive Kingston 32GB' vendido por 'Vendedor A'
(7, 2);  -- 'Smartwatch Xiaomi Mi Band 5' vendido por 'Vendedor B'


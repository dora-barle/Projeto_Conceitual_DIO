-- Quantos pedidos foram feitos por cada cliente?
SELECT c.idCliente, c.Nome, c.Sobrenome, COUNT(p.idPedido) AS total_pedidos
FROM Pedido p
JOIN Cliente c ON p.Cliente_idCliente = c.idCliente
GROUP BY c.idCliente;

-- Algum vendedor também é fornecedor?
SELECT v.Razao_Social AS Vendedor, f.Razão_Social AS Fornecedor
FROM Terceiro_Vendedor v
JOIN Fornecedor f ON v.Razao_Social = f.Razão_Social;

-- Relação de produtos, fornecedores e estoques
SELECT p.Descrição AS Produto, f.Razão_Social AS Fornecedor, pe.Quantidade_Produto AS Estoque, pe.Status AS Status_Estoque
FROM Produto p
JOIN Produto_Fornecedor pf ON p.idProduto = pf.Produto_idProduto
JOIN Fornecedor f ON pf.Fornecedor_idFornecedor = f.idFornecedor
JOIN Produto_Estoque pe ON p.idProduto = pe.Produto_idProduto;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.Razão_Social AS Nome_Fornecedor, p.Descrição AS Nome_Produto
FROM Produto_Fornecedor pf
JOIN Fornecedor f ON pf.Fornecedor_idFornecedor = f.idFornecedor
JOIN Produto p ON pf.Produto_idProduto = p.idProduto;

-- Quais são os nomes, sobrenomes e endereços dos clientes?
SELECT Nome, 
Sobrenome, Endereço FROM Cliente;

-- Quais são os clientes que têm CPF como tipo de cliente, e quais são seus nomes, sobrenomes, CPF e e-mails?
SELECT Nome, Sobrenome, CPF, E_mail FROM Cliente
WHERE Tipo_Cliente = 'CPF';

-- Qual é a idade dos clientes, baseada na data de nascimento?
SELECT Nome, Sobrenome, YEAR(CURDATE()) - YEAR(Data_Nascimento) AS Idade
FROM Cliente;

-- Quais são os nomes, sobrenomes, telefones e datas de nascimento dos clientes, ordenados pela data de nascimento mais recente?
SELECT Nome, Sobrenome, Telefone, Data_Nascimento
FROM Cliente
ORDER BY Data_Nascimento DESC;

-- Quantos clientes existem para cada tipo de cliente, considerando apenas os tipos que têm mais de 2 clientes?
SELECT Tipo_Cliente, COUNT(*) AS TotalClientes
FROM Cliente
GROUP BY Tipo_Cliente
HAVING COUNT(*) > 2;

-- Quais pedidos estão "Em andamento" e quais são os nomes e sobrenomes dos clientes que fizeram esses pedidos?
SELECT Pedido.idPedido, Cliente.Nome, Cliente.Sobrenome, Pedido.Status_Pedido
FROM Pedido
JOIN Cliente ON Pedido.Cliente_idCliente = Cliente.idCliente
WHERE Pedido.Status_Pedido = 'Em andamento';

-- Quais produtos estão no estoque, incluindo a categoria, descrição e quantidade disponível, ordenados pela quantidade em estoque de forma descendente?
SELECT p.idProduto, p.Categoria, p.Descrição, pe.Quantidade_Produto
FROM Produto p
JOIN Produto_Estoque pe ON p.idProduto = pe.Produto_idProduto
ORDER BY pe.Quantidade_Produto DESC;

-- Quais são os nomes dos clientes, os números dos pedidos e os valores totais desses pedidos, ordenados pelos números de pedidos?
SELECT Cliente.Nome AS Nome_Cliente, Pedido.idPedido AS Numero_Pedido, Pedido.Valor_Total AS Valor_Total_Pedido
FROM Pedido
JOIN Cliente ON Pedido.Cliente_idCliente = Cliente.idCliente
ORDER BY Pedido.idPedido;

-- Qual é a média dos valores totais dos pedidos?
SELECT AVG(Valor_Total) AS Media_Valor_Pedidos
FROM Pedido;


# Desafio de Implementação de Banco de Dados Relacional para E-commerce

## Objetivo
O objetivo deste projeto foi implementar un banco de dados relacional a partir de um modelo conceitual. Desenvolvido no MySQL Workbench.

## Modelagem do Banco de Dados

O sistema de e-commerce foi modelado com as seguintes entidades e relações:

### Tabelas Criadas:
1. **Cliente**: Contém dados sobre os clientes, incluindo nome, CPF/CNPJ, endereço e outros detalhes relevantes. Foi definida uma constraint para garantir que o cliente seja PF ou PJ, mas não ambos.
2. **Pedido**: Armazena informações sobre os pedidos feitos pelos clientes, incluindo o status, valor total e os produtos solicitados.
3. **Produto**: Contém os produtos disponíveis no e-commerce, com dados como categoria, descrição e valor.
4. **Fornecedor**: Relaciona os fornecedores aos produtos. A relação é de muitos para muitos entre `Produto` e `Fornecedor`.
5. **Terceiro_Vendedor**: Relaciona os vendedores aos produtos. 
6. **Pagamento**: Permite associar diferentes formas de pagamento aos pedidos. Um pedido pode ter mais de uma forma de pagamento.
7. **Entrega_Pedidos**: Armazena o status da entrega, incluindo o código de rastreio para cada pedido.

### Relacionamentos:
- **Cliente-Pedido**: Um cliente pode realizar múltiplos pedidos.
- **Produto-Pedido**: Um pedido pode incluir múltiplos produtos.
- **Produto-Fornecedor**: Um produto pode ter múltiplos fornecedores e vice-versa.
- **Pedido-Pagamento**: Um pedido pode ter múltiplas formas de pagamento.
- **Pedido-Entrega**: Cada pedido tem um status de entrega associado, incluindo o código de rastreio.


- Este repositório contém os seguintes arquivos:

1. **E-commerce-DIO.sql**  
   Contém o script SQL responsável pela criação das tabelas e a definição das constraints e relacionamentos entre elas. Este script define o esquema do banco de dados relacional, criando as tabelas necessárias para o sistema de e-commerce.
   
2. **E-commerce-DIO_Queries.sql**  
   Contém uma série de queries SQL que realizam consultas sobre o banco de dados. Essas queries são usadas para responder a diversas perguntas relacionadas ao sistema, como o total de pedidos por cliente, produtos mais vendidos, e se algum vendedor também é fornecedor, entre outras.

3. **E-commerce-DIO_Dados.sql**  
   Este arquivo contém os dados inseridos nas tabelas criadas pelo script `E-commerce-DIO.sql`. Ele serve para popular o banco de dados com informações de clientes, pedidos, produtos, fornecedores, e mais, permitindo realizar testes e consultas no sistema.



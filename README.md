# Projeto_Conceitual_DIO
# Modelo Conceitual de E-commerce
## Descrição Geral
Este projeto consistiu na criação de um **modelo conceitual de banco de dados** para um sistema de E-COMMERCE, desenvolvido no **MySQL Workbench**. O objetivo foi mapear as entidades e os relacionamentos essenciais para gerenciar clientes, produtos, pedidos, pagamentos e entregas, garantindo flexibilidade e escalabilidade.

## Objetivo
O modelo foi desenvolvido para representar de forma clara e eficiente as seguintes funcionalidades:
- Cadastro de clientes, diferenciando entre pessoas físicas e jurídicas.
- Registro de diferentes produtos, fornecedores, terceiros e controle de estoque.
- Gerenciamento de pedidos, incluindo pagamentos e entregas.

## Componentes do Modelo
### 1. Clientes
- **Pessoa Física (PF)**: Incluiu informações como CPF, nome e data de nascimento.
- **Pessoa Jurídica (PJ)**: Contém campos como CNPJ, razão social e data de criação.
- Cada cliente foi categorizado como **Pessoa Física ou Jurídica**, nunca ambos.

### 2. Produtos
- Representaram os itens vendidos na plataforma.
- Produtos puderam ser vinculados a **fornecedores ou terceiros**.

### 3. Pagamentos
- Cada pedido pôde ter múltiplas formas de pagamento associadas, como **cartão de crédito, cartão de débito, PIX**, entre outras.
- O detalhamento de cada forma de pagamento foi registrado na tabela de pagamentos.

### 4. Entregas
- Cada pedido pôde gerar múltiplas entregas.
- As entregas incluíram:
  - **Status** (ex.: "Em transporte", "Entregue", "Cancelado").
  - **Código de rastreio** para acompanhamento.

### 5. Pedidos
- Representaram os relacionamentos entre clientes e os produtos adquiridos.
- Foram conectados diretamente às tabelas de pagamentos e entregas.


## Diagrama Conceitual
O modelo foi desenvolvido no **MySQL Workbench** e reflete a estrutura descrita acima. Ele inclui todas as entidades, atributos e relacionamentos detalhados.










# BigQuery — Agregações Especiais em E-commerce

Projeto desenvolvido para explorar funções avançadas de agregação do BigQuery utilizando a base pública TheLook E-commerce.

---

# Objetivo

Demonstrar como funções especiais de agregação podem ser utilizadas para gerar insights comerciais e operacionais em grandes volumes de dados.

---

# Dataset

Fonte:

bigquery-public-data.thelook_ecommerce

Tabelas utilizadas:

- order_items
- products
- orders
- users

---

# Funções exploradas

## APPROX_COUNT_DISTINCT

Estimativa rápida de clientes únicos por categoria.

## APPROX_TOP_COUNT

Identificação dos clientes mais recorrentes por categoria.

## STRING_AGG

Consolidação de marcas por categoria.

## APPROX_QUANTILES

Distribuição de preços por departamento.

## LOGICAL_AND

Validação de clientes com todos os pedidos entregues.

## LOGICAL_OR

Identificação de clientes com histórico de devoluções.

## APPROX_TOP_SUM

Produtos com maior impacto financeiro.

---

# Principais Insights

### Categorias com maior alcance de clientes

- Jeans
- Intimates
- Tops & Tees

### Categorias com maior receita

- Outerwear & Coats
- Jeans
- Sweaters

### Distribuição de preços

Departamento Masculino:

- Mínimo: 1.5
- Q1: 25.0
- Mediana: 44.0
- Q3: 70.0
- Máximo: 999.0

Departamento Feminino:

- Mínimo: 0.0
- Q1: 21.1
- Mediana: 37.0
- Q3: 68.7
- Máximo: 903.0

---

# Tecnologias

- Google BigQuery
- SQL (GoogleSQL)
- GitHub

---

# Autor

Antonio Neto

Projeto criado para desenvolvimento de habilidades em Analytics Engineering, SQL e BigQuery.

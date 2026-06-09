# BigQuery — Agregações Especiais em E-commerce

![Arquitetura do Projeto](images/arquitetura.png)

![BigQuery](https://img.shields.io/badge/BigQuery-4285F4?style=for-the-badge&logo=googlecloud&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

Projeto desenvolvido para explorar funções avançadas de agregação do BigQuery utilizando a base pública TheLook E-commerce.

---

# Objetivo

Demonstrar como funções avançadas de agregação podem ser utilizadas para responder perguntas de negócio e gerar insights comerciais e operacionais a partir de grandes volumes de dados.

---

# Dataset

**Fonte:**

```text
bigquery-public-data.thelook_ecommerce
```

**Tabelas utilizadas:**

- order_items
- products
- orders
- users

---

# Arquitetura do Projeto

O projeto segue o fluxo abaixo:

1. Extração dos dados da base pública TheLook E-commerce
2. Processamento analítico utilizando BigQuery
3. Aplicação de funções avançadas de agregação
4. Geração de análises comerciais e operacionais
5. Produção de insights para tomada de decisão

---

# Consultas Desenvolvidas

| Consulta | Função Principal |
|-----------|------------------|
| [01_clientes_unicos](sql/01_clientes_unicos.sql) | APPROX_COUNT_DISTINCT |
| [02_top_clientes_categoria](sql/02_top_clientes_categoria.sql) | ARRAY_AGG |
| [03_marcas_por_categoria](sql/03_marcas_por_categoria.sql) | ARRAY_AGG |
| [04_distribuicao_precos_departamento](sql/04_distribuicao_precos_departamento.sql) | APPROX_QUANTILES |
| [05_clientes_com_todos_pedidos_entregues](sql/05_clientes_com_todos_pedidos_entregues.sql) | LOGICAL_AND |
| [06_clientes_com_devolucao](sql/06_clientes_com_devolucao.sql) | LOGICAL_OR |
| [07_top_produtos_receita](sql/07_top_produtos_receita.sql) | ARRAY_AGG + STRUCT |

---

# Funções Exploradas

## APPROX_COUNT_DISTINCT

Estimativa rápida de clientes únicos em grandes volumes de dados.

## ARRAY_AGG

Construção de listas estruturadas de clientes, marcas e produtos.

## STRUCT

Criação de estruturas aninhadas para análises mais avançadas.

## APPROX_QUANTILES

Análise da distribuição de preços por departamento.

## LOGICAL_AND

Validação de regras de negócio relacionadas à entrega de pedidos.

## LOGICAL_OR

Identificação de clientes com eventos específicos, como devoluções.

---

# Principais Insights

## Clientes Únicos por Categoria

| Categoria | Clientes |
|------------|----------:|
| Jeans | 11.698 |
| Intimates | 11.375 |
| Tops & Tees | 10.950 |

**Insight:**

As categorias Jeans, Intimates e Tops & Tees apresentam o maior alcance de clientes, representando oportunidades para ações de retenção e cross-selling.

---

## Categorias com Maior Receita

| Categoria | Receita Total |
|------------|-------------:|
| Outerwear & Coats | 1.339.980 |
| Jeans | 1.238.589 |
| Sweaters | 839.275 |

**Insight:**

Embora algumas categorias possuam menos clientes, elas geram maior faturamento, indicando produtos de maior valor agregado.

---

## Distribuição de Preços

### Departamento Masculino

| Indicador | Valor |
|------------|-------:|
| Mínimo | 1.5 |
| Q1 | 25.0 |
| Mediana | 44.0 |
| Q3 | 70.0 |
| Máximo | 999.0 |

### Departamento Feminino

| Indicador | Valor |
|------------|-------:|
| Mínimo | 0.0 |
| Q1 | 21.1 |
| Mediana | 37.0 |
| Q3 | 68.7 |
| Máximo | 903.0 |

**Insight:**

Os dois departamentos apresentam distribuições semelhantes, porém o departamento masculino possui ticket máximo superior.

---

## Operação Logística

### Clientes com Todos os Pedidos Entregues

| Status | Clientes |
|---------|---------:|
| Sim | 20.190 |
| Não | 60.079 |

**Insight:**

A maioria dos clientes apresentou pelo menos um pedido sem entrega concluída, evidenciando oportunidades de melhoria operacional.

---

## Clientes com Histórico de Devolução

| Status | Clientes |
|---------|---------:|
| Sim | 11.857 |
| Não | 68.412 |

**Insight:**

A taxa de clientes com devoluções é relativamente baixa, mas pode ser analisada em conjunto com categorias e marcas para identificar padrões.

---

# Tecnologias

- Google BigQuery
- SQL (GoogleSQL)
- GitHub

---

# Competências Desenvolvidas

- SQL Analítico
- BigQuery
- Funções Avançadas de Agregação
- Analytics Engineering
- Business Analytics
- Data Exploration
- Data Storytelling
- Git e GitHub
- Documentação Técnica

---

# Autor

Antonio Neto

Projeto desenvolvido como parte da jornada de evolução em Analytics Engineering, BigQuery e Business Analytics.

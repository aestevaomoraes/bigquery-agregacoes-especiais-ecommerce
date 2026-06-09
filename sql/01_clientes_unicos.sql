-- =========================================================
-- QUERY: 01_clientes_unicos
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Identificar quais categorias de produtos
-- atraem a maior quantidade de clientes únicos.

-- 💡 SOLUÇÃO
-- Utilizar APPROX_COUNT_DISTINCT()
-- para estimar a quantidade de clientes
-- distintos por categoria.

-- 📊 MÉTRICA PRINCIPAL
-- Clientes únicos por categoria.

-- 🔍 INSIGHT ESPERADO
-- Descobrir categorias com maior alcance
-- de clientes para apoiar ações comerciais
-- e campanhas de marketing.

SELECT
    p.category,
    APPROX_COUNT_DISTINCT(oi.user_id) AS clientes_unicos

FROM `bigquery-public-data.thelook_ecommerce.order_items` oi

JOIN `bigquery-public-data.thelook_ecommerce.products` p
    ON oi.product_id = p.id

GROUP BY p.category

ORDER BY clientes_unicos DESC;

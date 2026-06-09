-- =========================================================
-- QUERY: 02_top_clientes_categoria
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Identificar os clientes mais recorrentes
-- dentro de cada categoria de produto.

-- 💡 SOLUÇÃO
-- Utilizar APPROX_TOP_COUNT()
-- para encontrar os três clientes
-- mais frequentes por categoria.

-- 📊 MÉTRICA PRINCIPAL
-- Frequência de compra por cliente.

-- 🔍 INSIGHT ESPERADO
-- Descobrir clientes com maior engajamento
-- para campanhas de fidelização.

SELECT
    p.category,

    APPROX_TOP_COUNT(
        CAST(oi.user_id AS STRING),
        3
    ) AS top_clientes

FROM `bigquery-public-data.thelook_ecommerce.order_items` oi

JOIN `bigquery-public-data.thelook_ecommerce.products` p
    ON oi.product_id = p.id

GROUP BY p.category

ORDER BY p.category;

-- =========================================================
-- QUERY: 07_top_produtos_receita
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Identificar os produtos
-- que geraram maior receita.

-- 💡 SOLUÇÃO
-- Utilizar ARRAY_AGG()
-- ordenado pela receita total.

-- 📊 MÉTRICA PRINCIPAL
-- Receita por produto.

-- 🔍 INSIGHT ESPERADO
-- Identificar produtos estratégicos
-- para campanhas, estoque e expansão.

SELECT

    ARRAY_AGG(
        STRUCT(
            p.name,
            SUM(oi.sale_price) AS receita
        )
        ORDER BY receita DESC
        LIMIT 10
    ) AS top_produtos

FROM `bigquery-public-data.thelook_ecommerce.order_items` oi

JOIN `bigquery-public-data.thelook_ecommerce.products` p
    ON oi.product_id = p.id;

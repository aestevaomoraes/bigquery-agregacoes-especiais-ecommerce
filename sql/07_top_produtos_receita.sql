-- =========================================================
-- QUERY: 07_top_produtos_receita
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

WITH receita_produtos AS (

    SELECT

        p.name,

        SUM(oi.sale_price) AS receita

    FROM `bigquery-public-data.thelook_ecommerce.order_items` oi

    JOIN `bigquery-public-data.thelook_ecommerce.products` p
        ON oi.product_id = p.id

    GROUP BY p.name

)

SELECT

    ARRAY_AGG(
        STRUCT(
            name,
            receita
        )
        ORDER BY receita DESC
        LIMIT 10
    ) AS top_produtos

FROM receita_produtos;

-- =========================================================
-- QUERY: 05_clientes_com_todos_pedidos_entregues
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Medir a qualidade da operação logística.

-- 💡 SOLUÇÃO
-- Utilizar LOGICAL_AND()
-- para verificar se todos os pedidos
-- de cada cliente foram entregues.

-- 📊 MÉTRICA PRINCIPAL
-- Clientes com todos os pedidos entregues.

-- 🔍 INSIGHT ESPERADO
-- Avaliar a eficiência operacional
-- da cadeia logística.

WITH clientes AS (

    SELECT

        user_id,

        LOGICAL_AND(
            delivered_at IS NOT NULL
        ) AS todos_entregues

    FROM `bigquery-public-data.thelook_ecommerce.order_items`

    GROUP BY user_id

)

SELECT

    todos_entregues,

    COUNT(*) AS qtd_clientes

FROM clientes

GROUP BY todos_entregues

ORDER BY qtd_clientes DESC;

-- =========================================================
-- QUERY: 06_clientes_com_devolucao
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Identificar clientes que realizaram
-- pelo menos uma devolução.

-- 💡 SOLUÇÃO
-- Utilizar LOGICAL_OR()
-- para verificar se existe ao menos
-- uma devolução por cliente.

-- 📊 MÉTRICA PRINCIPAL
-- Clientes com devolução.

-- 🔍 INSIGHT ESPERADO
-- Medir possíveis problemas de qualidade,
-- satisfação do cliente ou logística reversa.

WITH clientes AS (

    SELECT

        user_id,

        LOGICAL_OR(
            returned_at IS NOT NULL
        ) AS teve_devolucao

    FROM `bigquery-public-data.thelook_ecommerce.order_items`

    GROUP BY user_id

)

SELECT

    teve_devolucao,

    COUNT(*) AS qtd_clientes

FROM clientes

GROUP BY teve_devolucao

ORDER BY qtd_clientes DESC;

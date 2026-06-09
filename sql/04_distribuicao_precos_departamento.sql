-- =========================================================
-- QUERY: 04_distribuicao_precos_departamento
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Entender a distribuição dos preços
-- dos produtos por departamento.

-- 💡 SOLUÇÃO
-- Utilizar APPROX_QUANTILES()
-- para criar quartis de preço.

-- 📊 MÉTRICA PRINCIPAL
-- Quartis de preço por departamento.

-- 🔍 INSIGHT ESPERADO
-- Identificar departamentos com
-- produtos premium ou populares.

WITH quartis AS (

    SELECT
        department,

        APPROX_QUANTILES(
            retail_price,
            4
        ) AS quartis_preco

    FROM `bigquery-public-data.thelook_ecommerce.products`

    GROUP BY department

)

SELECT
    department,

    ARRAY(
        SELECT ROUND(valor, 1)
        FROM UNNEST(quartis_preco) valor
    ) AS quartis_preco

FROM quartis

ORDER BY department;

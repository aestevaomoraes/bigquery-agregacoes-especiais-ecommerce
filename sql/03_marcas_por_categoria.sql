-- =========================================================
-- QUERY: 03_marcas_por_categoria
-- PROJETO: bigquery-agregacoes-especiais-ecommerce
-- AUTOR: Antonio Neto
-- TECNOLOGIA: BigQuery (GoogleSQL)
-- =========================================================

-- 🎯 PROBLEMA DE NEGÓCIO
-- Identificar quais marcas compõem
-- cada categoria de produto.

-- 💡 SOLUÇÃO
-- Utilizar STRING_AGG()
-- para consolidar todas as marcas
-- em uma única linha por categoria.

-- 📊 MÉTRICA PRINCIPAL
-- Marcas disponíveis por categoria.

-- 🔍 INSIGHT ESPERADO
-- Compreender diversidade de marcas
-- e possíveis oportunidades de expansão
-- de portfólio.

SELECT
    category,

    STRING_AGG(
        DISTINCT brand,
        ', '
    ) AS marcas

FROM `bigquery-public-data.thelook_ecommerce.products`

GROUP BY category

ORDER BY category;

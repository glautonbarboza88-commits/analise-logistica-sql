-- Objetivo: Identificar produtos sem saída há mais de 30 dias para evitar prejuízo
SELECT 
    nome_produto, 
    sku, 
    quantidade_estocada, 
    data_ultima_movimentacao
FROM 
    tabela_estoque
WHERE 
    data_ultima_movimentacao < CURRENT_DATE - 30
ORDER BY 
    quantidade_estocada DESC;

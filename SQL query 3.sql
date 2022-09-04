SELECT COUNT(*) as shops_count FROM dbo.Sales sales
INNER JOIN dbo.DIM_Shops shops ON sales.IDShop = shops.IDShop
WHERE ChainName IN('Ёльдорадо') AND Date = '2021-02-12'


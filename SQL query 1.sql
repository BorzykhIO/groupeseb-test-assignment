SELECT DISTINCT Brand FROM dbo.DIM_Products prod
	INNER JOIN dbo.Sales sales on prod.IDSku = sales.IDSku
	INNER JOIN dbo.DIM_Shops shops ON sales.IDShop = shops.IDShop
WHERE ChainName IN('Глобус')

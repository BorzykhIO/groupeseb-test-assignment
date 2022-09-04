WITH sales_cte AS 
	(SELECT COUNT(*) as count_goods, prod.IDSku, SkuName FROM dbo.Sales sales
	INNER JOIN dbo.DIM_Shops shops ON sales.IDShop = shops.IDShop
	INNER JOIN dbo.DIM_Products prod ON prod.IDSku = sales.IDSku
	WHERE ChainName IN('ÄÍÑ')
	GROUP BY prod.SkuName, prod.IDsku
)
SELECT IDsku, SkuName FROM (
	SELECT IDsku, SkuName, count_goods, RANK() OVER (ORDER BY count_goods DESC) AS r 
	FROM sales_cte) query
WHERE r <= 5




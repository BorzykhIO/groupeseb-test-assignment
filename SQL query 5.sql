SELECT Date, ROUND(AVG(Amount), 2) avg_amount FROM dbo.Sales sales
	INNER JOIN dbo.DIM_Products prod ON sales.IDSku = prod.IDSku
	INNER JOIN dbo.DIM_Shops shops ON sales.IDShop = shops.IDShop
WHERE ChainName IN('HOME&COOK') 
	AND prod.IDSku IN('2211400509') 
	AND Date BETWEEN '2021-02-08' 
	AND '2021-02-14'
GROUP BY Date


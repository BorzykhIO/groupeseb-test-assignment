SELECT  SUM(Quantity) AS sum_quantity, ROUND(SUM(Amount), 2) AS sum_amount 
FROM dbo.Sales sales
	INNER JOIN dbo.DIM_Shops shops ON sales.IDShop = shops.IDShop
WHERE MONTH(Date) = 2 AND YEAR(Date) = 2021 AND ChainName IN('Metro')


USE Adidas_US_Sales;

SELECT * FROM Adidas_US_2;

-- Renombrando columnas
EXEC sp_rename 'dbo.Adidas_US_2.sales_id', 'Sales ID', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.retailer', 'Retailer', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.retailer_id', 'Retailer ID', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.invoice_date', 'Invoice Date', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.region', 'Region', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.state', 'State', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.city', 'City', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.product', 'Product', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.price_per_unit', 'Price per Unit', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.units_sold', 'Units Sold', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.total_sales', 'Total Sales', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.operating_profit', 'Operating Profit', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.sales_method', 'Sales Method', 'COLUMN';
EXEC sp_rename 'dbo.Adidas_US_2.operating_margin', 'Operating Margin', 'COLUMN';

SELECT * FROM dbo.Adidas_US_2;

-- Comprobar tipos de datos

EXEC sp_help [dbo.Adidas_US_2]

-- Cambiar el tipo de dato que necesitamos: No hay tipos de datos que cambiar

--  Total de ingresos por año --
SELECT DATENAME(YEAR, [Invoice Date]) AS 'YEAR',
	SUM([Total Sales]) AS [Ingresos Totales]
FROM dbo.Adidas_US_2
GROUP BY DATENAME(YEAR, [Invoice Date]);

-- Ingresos totales por mes en el año 2020
SELECT 
    MONTH([Invoice Date]) AS MesNumero,
    DATENAME(MONTH, [Invoice Date]) AS 'MES',
    SUM([Total Sales]) AS [Ingresos Totales]
FROM dbo.Adidas_US_2
WHERE YEAR([Invoice Date]) = 2020
GROUP BY 
    MONTH([Invoice Date]),
    DATENAME(MONTH, [Invoice Date])
ORDER BY MesNumero;

-- Ingresos totales por mes en el año 2021
SELECT
    MONTH([Invoice Date]) AS MesNumero,
    DATENAME(MONTH, [Invoice Date]) AS 'MES',
    SUM([Total Sales]) AS [Ingresos Totales]
FROM dbo.Adidas_US_2
WHERE YEAR([Invoice Date]) = 2021
GROUP BY
    MONTH([Invoice Date]),
    DATENAME(MONTH, [Invoice Date])
ORDER BY MesNumero;

-- 5 mejores productos del año 2020
SELECT TOP 5 [Product],
    SUM([Total Sales]) AS [Venta Total]
FROM dbo.Adidas_US_2
WHERE DATENAME(YEAR, [Invoice Date]) = 2020
GROUP BY [Product]
ORDER BY SUM([Total Sales]) DESC
-- 5 mejores productos del año 2021
SELECT TOP 5 [Product],
    SUM([Total Sales]) AS [Venta Total]
FROM dbo.Adidas_US_2
WHERE DATENAME(YEAR, [Invoice Date]) = 2021
GROUP BY [Product]
ORDER BY SUM([Total Sales]) DESC;

-- Promedio de ventas Diarias en el 2020
SELECT [Retailer],
    AVG([Total Sales]) AS [Promedio Ventas Diarias]
FROM dbo.Adidas_US_2
WHERE DATENAME(YEAR, [Invoice Date]) = 2020
GROUP BY [Retailer]
ORDER BY AVG([Total Sales]) DESC
-- Promedio de ventas Diarias en el 2021
SELECT [Retailer],
    AVG([Total Sales]) AS [Promedio Ventas Diarias]
FROM dbo.Adidas_US_2
WHERE DATENAME(YEAR, [Invoice Date]) = 2021
GROUP BY [Retailer]
ORDER BY AVG([Total Sales]) DESC;

-- Principales Regiones, Estados y Ciudades en terminos de ventas en el 2020
-- Region
SELECT 
    TOP 1 [Region],
    SUM([Total Sales]) AS [Venta Total]
FROM 
    dbo.Adidas_US_2
WHERE 
    DATENAME(YEAR, [Invoice Date]) = 2020
GROUP BY 
    [Region]
ORDER BY
    SUM([Total Sales]) DESC

-- Estado
SELECT
    TOP 1 [State],
    SUM([Total Sales]) AS [Venta Total]
FROM
    dbo.Adidas_US_2
WHERE
    DATENAME(YEAR, [Invoice Date]) = 2020
GROUP BY
    [State]
ORDER BY
    SUM([Total Sales]) DESC

-- Ciudad
SELECT
    TOP 1 [City],
    SUM([Total Sales]) AS [Venta Total]
FROM
    dbo.Adidas_US_2
WHERE
    DATENAME(YEAR, [Invoice Date]) = 2020
GROUP BY
    [City]
ORDER BY
    SUM([Total Sales]) DESC;

-- Principales Regiones, Estados y Ciudades en terminos de ventas en el 2021
-- Region
SELECT
    TOP 1 [Region],
    SUM([Total Sales]) AS [Venta Total]
FROM
    dbo.Adidas_US_2
WHERE
    DATENAME(YEAR, [Invoice Date]) = 2021
GROUP BY
    [Region]
ORDER BY
    SUM([Total Sales]) DESC

-- Estado
SELECT
    TOP 1 [State],
    SUM([Total Sales]) AS [Venta Total]
FROM
    dbo.Adidas_US_2
WHERE
    DATENAME(YEAR, [Invoice Date]) = 2021
GROUP BY
    [State]
ORDER BY
    SUM([Total Sales])

-- Ciudad
SELECT
    TOP 1 [City],
    SUM([Total Sales]) AS [Venta Total]
FROM
    dbo.Adidas_US_2
WHERE
    DATENAME(YEAR, [Invoice Date]) = 2021
GROUP BY
    [City]
ORDER BY
    SUM([Total Sales]) DESC;

-- TOP 3 Mejores metodos de venta en el 2020
SELECT TOP 3 [Sales Method],
    SUM([Total Sales]) AS [Venta Total]
FROM dbo.Adidas_US_2
WHERE DATENAME(YEAR, [Invoice Date]) = 2020
GROUP BY
    [Sales Method]
ORDER BY
    SUM([Total Sales]) DESC

-- TOP 3 Mejores metodos de venta en el 2021
SELECT TOP 3 [Sales Method],
    SUM([Total Sales]) AS [Venta Total]
FROM dbo.Adidas_US_2
WHERE DATENAME(YEAR, [Invoice Date]) = 2021
GROUP BY 
    [Sales Method]
ORDER BY
    SUM([Total Sales]) DESC;
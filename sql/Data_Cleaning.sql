USE Adidas_US_Sales;

-- Agregar la Columna
-- ALTER TABLE Adidas_US
-- ADD Operating_Margin DECIMAL(10,2);

-- Actualizarla
-- UPDATE Adidas_US
-- SET Operating_Margin = 
--    CASE 
--       WHEN total_sales IS NULL OR total_sales = 0 THEN NULL
--        ELSE (operating_profit / total_sales)
--    END;

SELECT * FROM Adidas_US;

/* Identificando duplicados */

WITH duplicados AS (SELECT *,
	ROW_NUMBER() OVER(PARTITION BY retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit, units_sold, total_sales, operating_profit, sales_method, Operating_Margin ORDER BY sales_id) AS row_num
FROM dbo.Adidas_US)

SELECT *
FROM duplicados
WHERE row_num > 1;

/*Cantidad de Duplicados*/

WITH duplicados AS (SELECT *,
	ROW_NUMBER() OVER(PARTITION BY retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit, units_sold, total_sales, operating_profit, sales_method, Operating_Margin ORDER BY sales_id) AS row_num
FROM dbo.Adidas_US)

SELECT
	COUNT(*) AS total_duplicados
FROM 
	duplicados
WHERE row_num > 1;

/* Creando tabla para Duplicados */
CREATE TABLE Adidas_US_2 (
    sales_id INT,
    retailer VARCHAR(50),
    retailer_id INT,
    invoice_date DATE,
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    price_per_unit TINYINT,
    units_sold INT,
    total_sales INT,
    operating_profit REAL,
    sales_method VARCHAR(50),
    operating_margin DECIMAL(10,2),
    row_num INT
);

INSERT INTO dbo.Adidas_US_2 
SELECT *,
	ROW_NUMBER() OVER(PARTITION BY sales_id, retailer, retailer_id, invoice_date, region, state, city, product, price_per_unit, units_sold, total_sales, operating_profit, sales_method, Operating_Margin ORDER BY sales_id) AS row_num
FROM dbo.Adidas_US;

SELECT *
FROM dbo.Adidas_US_2;

SELECT *
FROM dbo.Adidas_US_2
WHERE row_num > 1;

/* Codigo para eliminar duplicados por si los hay */

DELETE
FROM dbo.Adidas_US_2
WHERE row_num > 1;

/* Se vió que no hay duplicados */

/* -- Valores Null & Blank -- */
	/* Identificando Valores Null*/
SELECT
	SUM(CASE WHEN sales_id IS NULL THEN 1 ELSE 0 END) AS nulos_sales_id,
	SUM(CASE WHEN retailer IS NULL THEN 1 ELSE 0 END) AS nulos_retailer,
	SUM(CASE WHEN retailer_id IS NULL THEN 1 ELSE 0 END) AS nulos_retailer_id,
	SUM(CASE WHEN invoice_date IS NULL THEN 1 ELSE 0 END) AS nulos_invoice_date,
	SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END) AS nulos_region,
	SUM(CASE WHEN state IS NULL THEN 1 ELSE 0 END) AS nulos_state,
	SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS nulos_city,
	SUM(CASE WHEN product IS NULL THEN 1 ELSE 0 END) AS nulos_product,
	SUM(CASE WHEN price_per_unit IS NULL THEN 1 ELSE 0 END) AS nulos_price_per_unit,
	SUM(CASE WHEN units_sold IS NULL THEN 1 ELSE 0 END) AS nulos_units_sold,
	SUM(CASE WHEN total_sales IS NULL THEN 1 ELSE 0 END) AS nulos_total_sales,
	SUM(CASE WHEN operating_profit IS NULL THEN 1 ELSE 0 END) AS nulos_operating_profit,
	SUM(CASE WHEN sales_method IS NULL THEN 1 ELSE 0 END) AS nulos_sales_method,
	SUM(CASE WHEN Operating_Profit IS NULL THEN 1 ELSE 0 END) AS nulos_sales_method
FROM dbo.Adidas_US_2;
	
	/* No hay valores Nulos (NULL)*/

	/* Identificando valores Blank*/
SELECT
	SUM(CASE WHEN sales_id = '' THEN 1 ELSE 0 END) AS blank_sales_id,
	SUM(CASE WHEN retailer = '' THEN 1 ELSE 0 END) AS blank_retailer,
	SUM(CASE WHEN retailer_id = '' THEN 1 ELSE 0 END) AS blank_retailer_id,
	SUM(CASE WHEN invoice_date = '' THEN 1 ELSE 0 END) AS blank_invoice_date,
	SUM(CASE WHEN region = '' THEN 1 ELSE 0 END) AS blank_region,
	SUM(CASE WHEN state = '' THEN 1 ELSE 0 END) AS blank_state,
	SUM(CASE WHEN city = '' THEN 1 ELSE 0 END) AS blank_city,
	SUM(CASE WHEN product = '' THEN 1 ELSE 0 END) AS blank_product,
	SUM(CASE WHEN price_per_unit = '' THEN 1 ELSE 0 END) AS blank_price_per_unit,
	SUM(CASE WHEN units_sold = '' THEN 1 ELSE 0 END) AS blank_units_sold,
	SUM(CASE WHEN total_sales = '' THEN 1 ELSE 0 END) AS blank_total_sales,
	SUM(CASE WHEN operating_profit = '' THEN 1 ELSE 0 END) AS blank_operating_profit,
	SUM(CASE WHEN sales_method = '' THEN 1 ELSE 0 END) AS blank_sales_method,
	SUM(CASE WHEN Operating_Profit = '' THEN 1 ELSE 0 END) AS blank_sales_method
FROM dbo.Adidas_US_2;
	/* No hay valores blanco (Blank) */

/* Eliminamos la columna row_num */

ALTER TABLE dbo.Adidas_US_2
DROP COLUMN row_num;

SELECT *
FROM dbo.Adidas_US_2;
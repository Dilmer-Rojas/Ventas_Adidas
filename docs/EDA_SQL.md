# Análisis Exploratorio de Datos (SQL)

## Preprocesamiento de Datos

La Limpieza y Verificación de los datos es fundamental para que el resultado final sea confiable y preciso.

Conjunto de Datos:

<img src="Imagen1.png">

```sql
SELECT
	SUM(CASE WHEN sales_id IS NULL THEN 1 ELSE 0 END) AS nulos_sales_id,
	SUM(CASE WHEN retailer IS NULL THEN 1 ELSE 0 END) AS nulos_retailer,
	SUM(CASE WHEN retailer_id IS NULL THEN 1 ELSE 0 END) AS nulos_retailer_id
FROM dbo.Adidas_US;
```
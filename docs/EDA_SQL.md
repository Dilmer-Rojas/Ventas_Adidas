# Análisis Exploratorio de Datos (SQL)

## Preprocesamiento de Datos

La Limpieza y Verificación de los datos es fundamental para que el resultado final sea confiable y preciso.

Conjunto de Datos:

<img src="Imagen1.png">

### Análisis de Ventas

#### ¿Cuáles son los ingresos totales generados por año? (SQL)

```sql
SELECT DATENAME(YEAR, [Invoice Date]) AS 'AÑO',
	SUM([Total Sales]) AS [Ingresos Totales]
FROM dbo.Adidas_US_2
GROUP BY DATENAME(YEAR, [Invoice Date]);
```
<img src="./eda_img/eda1.png" height=120>
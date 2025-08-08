# Análisis de Ventas de Adidas en Estados Unidos

<div style="text-align: center;">
    <img src="./src/images/image.png">
</div>

Este repositorio sirve como mi documentación para el Proyecto de análisis de datos exploratorios de ventas de Adidas en Estados Unidos.

Todo el proyecto se implementó utilizando Python 3 en Jupyter Notebook, SQL Server y Microsoft Power BI Desktop y se publicó en Microsoft Power BI Service.


## Contenido

<!-- - [Enlace al dataset en Kaggle](https://www.kaggle.com/datasets/heemalichaudhari/adidas-sales-dataset) -->
- [Enlace al dataset de Kaggle](https://www.kaggle.com/datasets/sagarmorework/adidas-us-sales)
- [Objetivo del Proyecto](#objetivo-del-proyecto)
- [Preguntas Clave](#preguntas-clave)
- [Herramientas Utilizadas](#herramientas-utilizadas)
- [EDA SQL y Python](#eda-sql-y-python)
- [Visualización de Datos](#visualización-de-datos)
- [Respuestas a Preguntas Clave](#respuestas-a-preguntas-clave)

## Objetivo del proyecto

El objetivo principal de este análisis es comprender mejor el rendimiento de las ventas, el comportamiento del cliente, la popularidad de los productos, las tendencias geográficas, los patrones estacionales y la rentabilidad de los productos Adidas. Mediante el uso de SQL y Python para la manipulación de datos y Power BI para su visualización.


## Preguntas Clave

Durante el análisis, busqué respuestas a las siguientes preguntas:

#### Análisis de ventas

- ¿Cuáles son los ingresos totales generados por año? (SQL)
- ¿Cuáles son los ingresos totales generados por mes tanto para los años 2020 y 2021? (SQL)
- ¿Cuáles son los 5 mejores productos a lo largo de los años? (SQL)
- ¿Cuál es el valor promedio de ventas diarias por minorista? (SQL)
- ¿Cuál es el período de máximas ventas? (Power BI)

#### Análisis del cliente

- ¿Cuáles son las principales regiones, estados y ciudades en términos de ventas? (SQL)
- ¿Cuáles son los 3 mejores métodos de venta? (SQL)

#### Análisis de Producto

- ¿Qué categorías de productos son las más populares (ropa/calzado) (SQL)
- ¿Es más popular el producto para hombres o para mujeres? (SQL)
- ¿Cuáles son los productos pedidos anualmente? (SQL)
- ¿Cuáles son los productos más vendidos? (Power BI)
- ¿Cuál es la preferencia de productos por género (Power BI)
- ¿Qué productos son más rentables? (Power BI)

#### Análisis geográfico

- ¿Cuáles son los mercados clave por región, estado y ciudad? (Power BI)
- ¿Cuáles son las regiones/estados/ciudades con mayores ventas? (Power BI)
- ¿Están mostrando crecimiento los mercados emergentes? (Power BI)

#### Análisis estacional

- ¿Existen tendencias estacionales en las ventas relacionadas con festividades o días festivos? (Power BI)

#### Análisis de rentabilidad

- ¿Cuál es el margen de beneficio para diferentes productos o categorías? (SQL)
- ¿Cómo varía la rentabilidad según los diferentes métodos de venta? (SQL)
- ¿Cuáles son los productos, métodos de venta o regiones más rentables? (Power BI)
- ¿Qué tan eficientes son canales de venta? (Power BI)
- ¿Hay productos con ventas altas pero márgenes bajos? (Power BI)

## Herramientas utilizadas

Las herramientas que utilicé son:

- SQL y Python para la manipulación y exploración de los datos.
- Power BI para la visualización de los datos.

## Limpieza | Data Cleaning (Python y SQL)

[Notebook Data Cleaning - Python](./notebooks/Data_Cleaning_Python.ipynb) - El notebook guarda un archivo csv limpio pero solo es para mostrar habilidades en python.

[Archivo Data Cleaning - SQL](./sql/Data_Cleaning.sql) - Se le da uso durante el análisis.

## EDA (SQL)

Usamos SQL para hacer el análisis exploratorio de datos, todo esto lo puedes encontrar en:

[README EDA SQL](./sql/EDA_SQL.md)

[ARCHIVO EDA SQL](./sql/EDA_SQL.sql)


## Visualización de Datos

**Visualizaciones**:

* **Principal**

![Principal](./src/images/dashboard_imgs/im1.png)

* **Análisis de Producto**

![Análisis de Producto](./src/images/dashboard_imgs/im2.png)

* **Análisis Geográfico**

![Análisis Geográfico](./src/images/dashboard_imgs/im3.png)

* **Análisis de Rentabilidad**

![Análisis de Rentabilidad](./src/images/dashboard_imgs/im4.png)

* **Análisis de Minoristas**

![Análisis de Minoristas](./src/images/dashboard_imgs/im5.png)

Usamos Power BI para la visualización de los datos, todo esto lo puedes encontrar en:

[Reporte en PDF Power BI](./reports/Reporte%20Adidas%20USA%20Sales.pdf)

[Archivo Dashboard Power BI](./dashboard/Reporte%20Adidas%20USA%20Sales.pbix)

[LINK Dashboard Power BI](https://app.powerbi.com/groups/me/reports/47584f11-b20c-4b6f-9142-c29f7d861a58/ee61dbf363ab37347ac6?experience=power-bi)

**Informe Ejecutivo** ⇒ Para presentar

[Informe Ejecutivo](./reports/Informe%20Ejecutivo%20Adidas%20US%20Sales.pdf)

## Respuestas a Preguntas Clave

Durante el análisis de datos de ventas, se buscaron respuestas a preguntas clave que permiten comprender el comportamiento del negocio, el perfil de los clientes y la rentabilidad de los productos. A continuación, se presentan los hallazgos clasificados por tipo de análisis:



### 🛒 Análisis de Ventas

#### 💰 ¿Cuáles son los ingresos totales generados por año? *(SQL)*

* **2020:** 24 millones de dólares
* **2021:** 95 millones de dólares



#### 📆 ¿Cuáles son los ingresos mensuales en 2020 y 2021? *(SQL)*

##### 🔹 Año 2020:

* **Enero:** 2.31 M
* **Febrero:** 2.14 M
* **Marzo:** 2.40 M
* **Abril:** 3.10 M
* **Mayo:** 2.16 M
* **Junio:** 1.08 M
* **Julio:** 2.15 M
* **Agosto:** 2.60 M
* **Septiembre:** 2.36 M
* **Octubre:** 1.40 M
* **Noviembre:** 1.10 M
* **Diciembre:** 1.02 M

##### 🔹 Año 2021:

* **Enero:** 7.39 M
* **Febrero:** 6.10 M
* **Marzo:** 5.20 M
* **Abril:** 6.40 M
* **Mayo:** 8.50 M
* **Junio:** 8.60 M
* **Julio:** 10.36 M
* **Agosto:** 9.60 M
* **Septiembre:** 8.00 M
* **Octubre:** 7.10 M
* **Noviembre:** 7.80 M
* **Diciembre:** 10.33 M



#### 🥇 ¿Cuáles son los 5 productos más vendidos a lo largo del tiempo? *(SQL)*

1. Men's Street Footwear
2. Women's Apparel
3. Men's Athletic Footwear
4. Women's Street Footwear
5. Men's Apparel



#### 📈 ¿Cuál es el valor promedio de ventas diarias por minorista? *(SQL)*

* **165.7 mil dólares por día**



#### 🔥 ¿Cuál fue el período con mayores ventas? *(Power BI)*

* **Julio de 2021** con más de **10 millones de dólares** en ingresos



### 👥 Análisis del Cliente

#### 🌎 ¿Cuáles son las principales regiones, estados y ciudades en ventas? *(SQL)*

* **Noreste:** New York – 8.6 M
* **Sudeste:** Florida – 7.8 M
* **Oeste:** California – 8.4 M



#### 🛍️ ¿Cuáles son los 3 métodos de venta más rentables? *(SQL)*

1. **In-store:** 35.78% de rentabilidad
2. **Outlet:** 27.29%
3. **Online:** 21.47%



### 🧢 Análisis de Producto

#### 📊 ¿Qué categoría de productos es la más popular? *(SQL)*

* **Calzado** (Footwear) lidera en popularidad.



#### 🧑‍🤝‍🧑 ¿Es más popular el producto masculino o femenino? *(SQL)*

* Los productos para **hombres** son más populares.



#### 📦 ¿Cuántos productos se vendieron por año? *(SQL)*

* **2020:** 460 mil unidades
* **2021:** más de 2 millones de unidades



#### ⭐ ¿Cuáles son los productos más vendidos? *(Power BI)*

1. **Men's Street Footwear:** 2.7 M unidades
2. **Women's Apparel:** 2.3 M unidades



#### 🧍‍♂️🧍‍♀️ ¿Cuál es la preferencia de productos por género? *(Power BI)*

* **Hombres:** Prefieren `Men's Street Footwear`, seguido de Men's Athletic Footwear y Men's Apparel.
* **Mujeres:** Prefieren `Women's Apparel`, seguido de Women's Street Footwear y Women's Athletic Footwear.



#### 💹 ¿Qué productos son más rentables? *(Power BI)*

1. `Men's Street Footwear`
2. `Women's Apparel`



### 🌐 Análisis Geográfico

#### 🗺️ ¿Cuáles son los mercados clave por región/estado/ciudad? *(Power BI)*

* **Foot Locker:** New York
* **Kohl's:** California
* **Walmart:** Florida



#### 📍 ¿Dónde se concentran las mayores ventas? *(Power BI)*

* **Estados:** New York, California y Florida



#### 📈 ¿Están creciendo los mercados emergentes? *(Power BI)*

* **Philadelphia (PA):** +894.6% entre 2020 y 2021
* **San Francisco (CA):** +206.46% entre 2020 y 2021



### 🗓️ Análisis Estacional

#### 🎄 ¿Existen tendencias estacionales por festividades? *(Power BI)*

* **2020:** Pocas ventas por efecto de la pandemia
* **2021:** Picos en **julio** (verano) y **diciembre** (Navidad)



### 💵 Análisis de Rentabilidad

#### 📊 ¿Cuál es el margen de beneficio por categoría? *(SQL)*

* **Apparel (ropa):** 28.07%
* **Footwear (calzado):** 27.41%



#### 🛒 ¿Cómo varía la rentabilidad por método de venta? *(SQL)*

* **In-store** lidera con un **35%** de rentabilidad.
* **Outlet** y **Online** tienen también más del 20%, aunque hay oportunidades de mejora.



#### 🥇 ¿Qué productos, métodos o regiones son más rentables? *(Power BI)*

* **Estados más rentables:** Alabama y Michigan, ambos con más del 35%.



#### 📦 ¿Qué tan eficientes son los canales de venta? *(Power BI)*

* **In-store:** Mayor rentabilidad, pero menos volumen de ventas.
* **Online:** Mayor volumen de ventas, pero menor rentabilidad.



#### ⚠️ ¿Hay productos con muchas ventas pero bajo margen? *(Power BI)*

* **Men's Athletic Footwear:** Más de **20 millones en ventas**, pero con el **menor margen operativo** (25%).
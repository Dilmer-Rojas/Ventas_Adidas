# 🏆 Análisis de Ventas de Adidas en Estados Unidos

<div style="text-align: center;">
    <img src="./src/images/image.png">
</div>

Este proyecto documenta un análisis completo de las **ventas de Adidas en Estados Unidos**, con un enfoque en descubrir **tendencias de negocio, patrones de clientes y rentabilidad por producto**.  

El análisis combina **SQL y Python** para la manipulación de datos, y **Power BI** para la creación de dashboards interactivos y visualizaciones ejecutivas.

---

## 📖 Contexto y Propósito

Adidas experimentó un crecimiento importante en el mercado de EE.UU. durante 2020 y 2021. Sin embargo, la empresa enfrenta desafíos estratégicos:  
- ¿Qué productos generan mayor rentabilidad?  
- ¿Qué regiones y ciudades concentran las ventas más importantes?  
- ¿Cuáles son los canales de venta más eficientes?  
- ¿Existen patrones estacionales que permitan optimizar campañas?  

Este proyecto responde a estas preguntas con el objetivo de **apoyar decisiones de marketing, distribución y estrategia comercial**.

---

## 🌟 Insights Clave

* Las ventas crecieron **de 24M en 2020 a 95M en 2021** (x4 en solo un año).  
* El **Calzado masculino** es el que domina las ventas, siendo la categoría más popular.  
* **New York, California y Florida** son los mercados principales en ingresos.  
* **Julio y diciembre** destacan como meses pico (verano y Navidad).  
* El canal **In-store** es el más rentable, mientras que el **Online** genera mayor volumen.  
* Algunos productos, como *Men’s Athletic Footwear*, venden mucho pero con **bajo margen de ganancia**.  

---

## 📌 Recomendaciones

1. **Campañas de marketing focalizadas en julio y diciembre** (picos de consumo).  
2. **Enfocar promociones en calzado masculino**, especialmente en regiones top (NY, CA, FL).  
3. **Impulsar el canal online**, optimizando precios y márgenes.  
4. **Monitorear productos de alto volumen y bajo margen** para ajustar precios o costos.  
5. **Expandir en mercados emergentes** como Philadelphia y San Francisco, donde se observa crecimiento acelerado.  

---

## 📂 Contenido

- [Enlace al dataset de Kaggle](https://www.kaggle.com/datasets/sagarmorework/adidas-us-sales)  
- [Objetivo del Proyecto](#objetivo-del-proyecto)  
- [Preguntas Clave](#preguntas-clave)  
- [Herramientas Utilizadas](#herramientas-utilizadas)  
- [Limpieza de Datos](#limpieza--data-cleaning-python-y-sql)  
- [EDA con SQL](#eda-sql)  
- [Visualización de Datos](#visualización-de-datos)  
- [Respuestas a Preguntas Clave](#respuestas-a-preguntas-clave)  

---

## 🎯 Objetivo del Proyecto

El objetivo principal es **comprender el rendimiento de las ventas**, el comportamiento de los clientes, la popularidad de los productos, las tendencias geográficas, los patrones estacionales y la rentabilidad de los productos Adidas.  

Se usaron **SQL y Python** para el procesamiento de datos, y **Power BI** para su visualización ejecutiva.

---

## ❓ Preguntas Clave

Durante el análisis, se buscaron respuestas a los siguientes ejes de negocio:

- **Ventas:** ingresos por año, mes y minorista; top 5 productos; períodos de máxima venta.  
- **Cliente:** principales regiones, estados y ciudades; métodos de venta más usados.  
- **Producto:** categorías más populares; preferencias por género; productos más vendidos y rentables.  
- **Geografía:** mercados clave y emergentes.  
- **Estacionalidad:** impacto de festividades y temporadas.  
- **Rentabilidad:** márgenes por producto, categoría y canal de venta.  

---

## 🛠️ Herramientas Utilizadas

- **SQL Server**: limpieza y análisis de datos.  
- **Python (Pandas, Matplotlib, Seaborn)**: exploración y manipulación de datos.  
- **Power BI**: visualización y reporte ejecutivo.  

---

## 🧹 Limpieza | Data Cleaning (Python y SQL)

- [Notebook Data Cleaning - Python](./notebooks/Data_Cleaning_Python.ipynb)  
- [Script Data Cleaning - SQL](./sql/Data_Cleaning.sql)  

---

## 🔍 EDA (SQL)

- [README EDA SQL](./sql/EDA_SQL.md)  
- [Archivo SQL](./sql/EDA_SQL.sql)  

---

## 📊 Visualización de Datos

**Dashboard en Power BI:**  

- **Principal**  
  ![Principal](./src/images/dashboard_imgs/im1.png)  

- **Análisis de Producto**  
  ![Análisis de Producto](./src/images/dashboard_imgs/im2.png)  

- **Análisis Geográfico**  
  ![Análisis Geográfico](./src/images/dashboard_imgs/im3.png)  

- **Análisis de Rentabilidad**  
  ![Análisis de Rentabilidad](./src/images/dashboard_imgs/im4.png)  

- **Análisis de Minoristas**  
  ![Análisis de Minoristas](./src/images/dashboard_imgs/im5.png)  

📎 Recursos:  
- [Reporte en PDF Power BI](./reports/Reporte%20Adidas%20USA%20Sales.pdf)  
- [Archivo Power BI (.pbix)](./dashboard/Reporte%20Adidas%20USA%20Sales.pbix)  
- [Dashboard Online Power BI](https://app.powerbi.com/groups/me/reports/47584f11-b20c-4b6f-9142-c29f7d861a58/ee61dbf363ab37347ac6?experience=power-bi)  

**Informe Ejecutivo**: [Ver PDF](./reports/Informe%20Ejecutivo%20Adidas%20US%20Sales.pdf)  

---

## 📈 Respuestas a Preguntas Clave

Durante el análisis se validaron hallazgos relevantes, entre ellos:  

- **Ventas totales:** 24M (2020) → 95M (2021).  
- **Mes con más ventas:** Julio 2021 (+10M).  
- **Producto más vendido:** *Men’s Street Footwear*.  
- **Categoría más popular:** Calzado (Footwear).  
- **Estados líderes:** NY, California y Florida.  
- **Canal más rentable:** In-store (+35%).  
- **Mercados emergentes:** Philadelphia (+894%) y San Francisco (+206%).  
- **Patrones estacionales:** julio (verano) y diciembre (Navidad).  
- **Margen por categoría:** Apparel (28%) vs Footwear (27%).  

---

✍️ **Autor:** Laureano D. Rojas Castañeda  
📅 **Año:** 2025  

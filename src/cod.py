import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_excel("./data/raw/adidas_us_sales_dataset.xlsx")


plt.figure(figsize=(7, 5))
ax = sns.barplot(data=df['Region'], palette='tab10')

# Añadir valores al final de cada barra
for p in ax.patches:
    ancho = p.get_width()
    ax.text(ancho + 1,                           # posición x (ligeramente a la derecha)
            p.get_y() + p.get_height() / 2,     # posición y (centro de la barra)
            int(ancho),                         # valor a mostrar
            va='center')                        # alineación vertical

# Títulos y etiquetas
plt.title('Outliers en Region')
plt.xlabel('Región')
plt.ylabel('Cantidad de registros')
plt.tight_layout()
plt.show()
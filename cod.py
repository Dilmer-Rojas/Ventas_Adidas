import seaborn as sns
import pandas as pd

df = pd.read_excel("./data/raw/adidas_us_sales_dataset.xlsx")


plt.figure(figsize=(7, 5))
ax = sns.barplot(data=df, x='Region', y='COUNT(*)', palette='tab10')

# Añadir los valores encima de cada barra
for p in ax.patches:
    altura = p.get_height()
    ax.text(p.get_x() + p.get_width() / 2,     # posición x: centro de la barra
            altura + 1,                        # posición y: un poco arriba del borde
            int(altura),                       # valor a mostrar
            ha='center', va='bottom', fontsize=9)

# Títulos y etiquetas
plt.title('Outliers en Region')
plt.xlabel('Región')
plt.ylabel('Cantidad de registros')
plt.tight_layout()
plt.show()
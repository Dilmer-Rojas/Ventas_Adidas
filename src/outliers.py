import pandas as pd
from colorama import Fore, Style
import numpy as np

df = pd.read_csv('../data/raw/Adidas US Sales.csv')

# Listar columnas no numéricas
columnas_no_numericas = df.select_dtypes(exclude=[np.number]).columns.tolist()
print(Fore.BLUE + "Columnas no numéricas en el dataset:" + Fore.RESET)
print(columnas_no_numericas)

# Umbral de frecuencia absoluta para considerar una categoría como "rara"
umbral_frecuencia = 5

for columna in columnas_no_numericas:
    print(Fore.BLUE + f"\nFrecuencias de la columna '{columna}':" + Style.RESET_ALL)
    frecuencias = df[columna].value_counts()
    print(frecuencias)

    # Identificar categorías raras
    categorias_raras = frecuencias[frecuencias < umbral_frecuencia]

    if categorias_raras.empty:
        print(Fore.GREEN + f"✅ No se encontraron valores poco frecuentes (outliers cualitativos) en la columna '{columna}'." + Style.RESET_ALL)
    else:
        print(Fore.RED + f"⚠️ Se encontraron valores poco frecuentes en la columna '{columna}':" + Style.RESET_ALL)
        print(categorias_raras)

# En resumen hay valores con poca frecuencia?
print(Fore.BLUE + "\nResumen de valores poco frecuentes (outliers cualitativos):" + Fore.RESET)
for columna in columnas_no_numericas:
    frecuencias = df[columna].value_counts()
    categorias_raras = frecuencias[frecuencias < umbral_frecuencia]
    if not categorias_raras.empty:
        print(Fore.RED + f"⚠️ Columna '{columna}' tiene valores poco frecuentes:" + Style.RESET_ALL)
        print(categorias_raras)
    else:
        print(Fore.GREEN + f"✅ Columna '{columna}' no tiene valores poco frecuentes." + Style.RESET_ALL)        

import pandas as pd
def limpiar_datos(df):
    # Valores nulos
    df = df.dropna(subset=['id'])
    df['columna'] = df['columna'].fillna('Desconocido')

    # Duplicados
    df = df.drop_duplicates()

    # Tipos de datos
    df['fecha'] = pd.to_datetime(df['fecha'], errors='coerce')

    # Limpieza de texto
    df['columna'] = df['columna'].str.strip().str.lower()

    # Outliers
    q1 = df['valor'].quantile(0.01)
    q99 = df['valor'].quantile(0.99)
    df['valor'] = df['valor'].clip(q1, q99)

    return df

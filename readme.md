# Customer Satisfaction Analysis

Este proyecto tiene como objetivo analizar la satisfacción del cliente a través de datos recopilados en encuestas. Usando técnicas de análisis multivariado como el clustering y el análisis de componentes principales (PCA), el proyecto extrae insights clave sobre los factores que influyen en la satisfacción del cliente.

## Descripción del Proyecto

Este análisis se centra en evaluar diferentes métricas de satisfacción del cliente y segmentar a los clientes en grupos similares. También se realiza un análisis de componentes principales para reducir la dimensionalidad y facilitar la interpretación de los datos.

### Objetivos
1. Identificar patrones en los datos de satisfacción.
2. Agrupar clientes en segmentos según su satisfacción usando técnicas de clustering.
3. Realizar un PCA para comprender las principales dimensiones de variación en las respuestas.

## Estructura de Archivos

- `BASE MODELO DE SATISFACCIÓN - GRUPO 2.sav`: archivo de datos en formato SPSS.
- `Client_Satisfaction.ipynb`: notebook de Jupyter para la ejecución de todo el análisis.
- `README.md`: archivo de información del proyecto.

## Configuración

### Prerrequisitos

Este proyecto se ejecuta principalmente en R, usando RStudio o Jupyter Notebook. Requiere las siguientes bibliotecas:

- `dplyr`, `ggplot2`, `factoextra`, `cluster`, `stats`, `tidyverse`
- `haven` (para leer archivos SPSS en R)
- `ggfortify` (para visualización PCA)

Para instalar estas librerías, ejecuta el siguiente comando en R:

```R
install.packages(c("dplyr", "ggplot2", "factoextra", "cluster", "stats", "tidyverse", "haven", "ggfortify"))
```
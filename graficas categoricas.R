# Dividir la ventana gráfica en 2x2 para mostrar los 4 boxplots
par(mfrow = c(2, 2))  # 2 filas y 2 columnas

# Boxplot para cada variable
boxplot(Sepal.Length ~ Species, data = iris, main = "Sepal.Length por Especie")
boxplot(Sepal.Width ~ Species, data = iris, main = "Sepal.Width por Especie")
boxplot(Petal.Length ~ Species, data = iris, main = "Petal.Length por Especie")
boxplot(Petal.Width ~ Species, data = iris, main = "Petal.Width por Especie")

# Restaurar la configuración gráfica
par(mfrow = c(1, 1))
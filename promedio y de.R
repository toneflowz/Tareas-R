numeros <- c(3,5,3,6,7,8,5)
n <- length(numeros)  

# Cálculo del promedio
suma <- 0
lugar <- 1
while (lugar <= n) {
  suma <- suma + numeros[lugar]
  lugar <- lugar + 1
}
promedio <- suma / n

# Cálculo de la desviación estándar
suma_cuadrados <- 0
lugar <- 1
while (lugar <= n) {
  suma_cuadrados <- suma_cuadrados + (numeros[lugar] - promedio)^2
  lugar <- lugar + 1
}
desviacion_estandar <- sqrt(suma_cuadrados / n)

print(paste("El promedio es:", promedio))
print(paste("La desviación estándar es:", desviacion_estandar))

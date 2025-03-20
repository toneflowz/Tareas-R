edades <- read.csv('Tabla 1.csv')[,2]
print(edades)

print(paste('La media es:',mean(edades)))
print(paste('La desviación estandar es:',sd(edades)))

medias_muestrales <- numeric(20)
desviaciones_estandar <- numeric(20)

for (i in 1:20){
  muestra <- sample(edades,10)
  medias_muestrales[i] <- mean (muestra)
  desviaciones_estandar[i] <- sd (muestra)
}
print (medias_muestrales)
print (desviaciones_estandar)

par(mfrow = c(1,2))

hist(medias_muestrales)
hist(desviaciones_estandar)
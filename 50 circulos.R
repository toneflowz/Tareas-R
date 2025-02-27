# Abrir la ventana gráfica
plot(NA, xlim = c(-50, 50), ylim = c(-50, 50), 
     main = "50 Círculos aleatorios", xlab = "X", ylab = "Y", asp = 1)

# Función para crear un círculo
crea_cir <- function(centro_x, centro_y, radio) {
  angulos <- seq(0, 2 * pi, length.out = 100)
  x <- centro_x + radio * cos(angulos)
  y <- centro_y + radio * sin(angulos)
  return(list(x = x, y = y))
}

# Crear una paleta de gradiente de grises
paleta_gris <- colorRampPalette(c("white", "black"))

# Generar y trazar 50 círculos aleatorios
for (i in 1:50) {
  # Generar centro aleatorio
  centro_x <- runif(1, -50, 50)
  centro_y <- runif(1, -50, 50)
  
  # Generar radio aleatorio
  radio <- runif(1, 2, 20)
  
  # Crear el círculo
  circulo <- crea_cir(centro_x, centro_y, radio)

  # Asignar un color de la paleta de gradiente
  color <- paleta_gris(50)[i]  # Usar el i-ésimo color de la paleta
    
  # Trazar el círculo
  lines(circulo$x, circulo$y, col = color)  # Colores diferentes para cada círculo
}
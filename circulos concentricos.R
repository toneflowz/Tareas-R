crea_cir <- function(radio = 0) {
  angulos <- seq(0, 2 * pi, 0.01)  
  coordenadas_x <- radio * cos(angulos)
  coordenadas_y <- radio * sin(angulos)
  coordenadas <- list(x = coordenadas_x, y = coordenadas_y)
  return(coordenadas)
}

plot(NA, xlim = c(-5, 5), ylim = c(-5, 5), main = "Círculos concéntricos", xlab = "X", ylab = "Y")


for (r in 2:5) {
   circulo <- crea_cir(r)
   points(circulo$x, circulo$y, col = 6, pch = 16)
}
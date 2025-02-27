# Definir el rango de x
x <- seq(-3, 3, 0.01)
y <- x^3  # Función f(x) = x^3

# Graficar la función
plot(x, y, type = 'l', col = "blue", lwd = 2,
     main = "Función f(x) = x^3 y segmentos tangentes",
     xlab = "x", ylab = "f(x)")

# Función para trazar un segmento tangente en un punto x0
trazar_tangente <- function(x0) {
  # Calcular la pendiente (derivada en x0)
  m <- 3 * x0^2
  
  # Calcular el punto (x0, y0) en la función
  y0 <- x0^3
  
  # Definir los extremos del segmento tangente
  x1 <- x0 - 0.5
  x2 <- x0 + 0.5
  y1 <- m * (x1 - x0) + y0  # Ecuación de la recta tangente
  y2 <- m * (x2 - x0) + y0
  
  # Trazar el segmento tangente
  points(c(x1, x2), c(y1, y2), type = 'l', col = "red", lwd = 2)
  
}

# Puntos donde se trazarán las tangentes
puntos_tangencia <- c(-2, 0, 1)

# Trazar las tangentes en los puntos dados
for (x0 in puntos_tangencia) {
  trazar_tangente(x0)
}
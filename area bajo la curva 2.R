# Definir la función f(x) = x^2
f <- function(x) {
  return(x^2)
}

# Parámetros
x1 <- 0  # Límite inferior
x2 <- 4  # Límite superior
n <- 1000  # Número de rectángulos

# Calcular el ancho de cada rectángulo
dx <- (x2 - x1) / n

# Puntos donde se evalúa la función (izquierda del rectángulo)
x <- seq(x1, x2 - dx, length.out = n)

# Calcular el área sumando las áreas de los rectángulos
area <- sum(f(x) * dx)

# Mostrar el resultado
cat("El área bajo la curva es:", area, "\n")

p1 <- c(1, 1)
p2 <- c(2.5, 3)
p3 <- c(4, 1)

distancia <- function(punto1, punto2) {
  sqrt((punto2[1] - punto1[1])^2 + (punto2[2] - punto1[2])^2)
}

lado1 <- distancia(p1, p2)
lado2 <- distancia(p2, p3)
lado3 <- distancia(p3, p1)

print(paste("Lado 1 (p1 a p2):", lado1))
print(paste("Lado 2 (p2 a p3):", lado2))
print(paste("Lado 3 (p3 a p1):", lado3))

print("El triángulo es isóceles")
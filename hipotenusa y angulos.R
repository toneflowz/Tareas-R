a <- 3
b <- 4

hipotenusa <- sqrt(a^2 + b^2)

theta1 <- atan(a / b)
theta2 <- atan(b / a)

theta1_grados <- theta1 * (180 / pi)
theta2_grados <- theta2 * (180 / pi)

print(hipotenusa)
print(theta1_grados)
print(theta2_grados)
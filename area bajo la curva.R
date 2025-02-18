lower <- 2
upper <- 4
n <- 1000  
dx <- (upper - lower) / n
sum_area <- 0
x <- lower

while (x < upper) {
  sum_area <- sum_area + (x^2) * dx
  x <- x + dx
}

print(sum_area)
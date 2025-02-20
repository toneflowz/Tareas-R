binario <- "10110001"

longitud <- nchar(binario)

decimal <- 0

for (i in 1:longitud) {
 
  digito <- substr(binario, i, i)
  digito_num <- as.numeric(digito)
  
  decimal <- decimal + digito_num * 2^(longitud - i)
}

print(decimal)
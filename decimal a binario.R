numero <- 25
binario <- "" 

while (numero > 0) {
  binario <- paste(numero %% 2, binario, sep = "")  
  numero <- trunc(numero / 2)  
}

print(binario)
lista = [9, 8, 8, 5]
k = 3
soma = 0

for j in 0..k-1
  lista[j] = lista[j] * (-1)
end
puts lista.sum

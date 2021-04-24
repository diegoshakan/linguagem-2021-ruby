lista = [9, 8, 8, 5]
k = 3

for i in 0..k-1
  if lista[i] < 0
    lista[i] = lista[i] * (-1)
  end
end

puts lista.sum



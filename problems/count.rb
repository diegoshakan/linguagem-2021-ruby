def count(string)
  upper, lower, number, special = 0, 0, 0, 0
  for i in 0..string.size
    if string[i] =~ /[a-z]/
      upper += 1
    elsif string[i] =~ /[A-Z]/
      lower += 1
    elsif string[i] =~ /[0-9]/
      number += 1
    else
      special += 1
    end
  end
  puts("Letras Maiúsculas: #{upper}")
  puts("Letras Minúsculas: #{lower}")
  puts("Números: #{number}")
  puts("Caracteres Especiais: #{special}")
end

count("teste")

# frozen_string_literal: true

# Modelo 1
array = [23, 27, 59, 24, 71, 1, 75, 27, 23, 44]
x = 100

def linear_search(array, number)
  for i in 0..array.size
    return i if array[i] == number
  end
  return -1
end

result = linear_search(array, x)
puts result == -1 ? "Não existe esse número no array" : "O número está no índice #{result}"

# Modelo 2
# count = 0
# def linear_search_modo_2(array, number, count)
#   while count <= array.size
#     if array[count] == number
#       return count
#     end
#     count += 1
#   end
#   return -1
# end

# result = linear_search_modo_2(array, x, count)
# puts result == -1 ? "Não existe esse número no array" : "O número está no índice #{result}"

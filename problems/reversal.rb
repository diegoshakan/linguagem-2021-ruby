array = [1, 0.2, 300, 45, 15, 996]
n = 3

def reversal(array, n)
  if n <= array.size
    for i in 0..array.size
      for j in 0..n-1
        last = array.last
        array.unshift(last)
        array.pop
      end
    end
    array
  else
    -1
  end
end

puts reversal(array, n)
def binary_search(value, list, first, last)
  mid = ((first + last) / 2).floor

  if first <= last
    if value > list[mid]
      first = mid + 1
      binary_search(value, list, first, last)
    elsif value < list[mid]
      last = mid - 1
      binary_search(value, list, first, last)
    else
      mid
    end
  else
    -1
  end
end

list = [12, 15, 19, 22, 25, 65, 98, 102, 325]

result = binary_search(19, list, 0, list.size)
puts result
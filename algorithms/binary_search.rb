def binary_search(value, list, first, last)
  mid = (first - last) / 2
  mid = mid.floor

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

list = [23, 27, 59, 24, 71, 1, 75, 27, 33, 44].sort

result = binary_search(23, list, 0, list.size)
puts result
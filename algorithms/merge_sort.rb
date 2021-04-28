list = [2, 4, -5, 1, 3]

def merge_sort(list)
  if list.size > 1
    mid = (list.size / 2).to_i

    left = list.take(mid)
    right = list.drop(mid)

    sorted_left = merge_sort(left)
    sorted_right = merge_sort(right)

    merge(sorted_left, sorted_right)
  end


  def merge(left_array, right_array)
    left_array if right_array.empty?
    right_array if left_array.empty?

    small_number = left_array.first <= right_array.first ? left_array.shift : right_array.shift

    again = merge(left_array, right_array)

    [small_number].concat(again)
  end
end

puts merge_sort(list)
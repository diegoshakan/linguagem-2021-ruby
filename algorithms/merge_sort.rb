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
end

def merge(left_array, right_array)
  if right_array.empty?
    left_array
  end

  if left_array.empty?
    right_array
  end
end
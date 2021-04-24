list = [-1, -1, -2, 4, 3]
size = list.size

def minimum_product(list, size)
  max_neg = -1.0/0
  min_pos = 1.0/0
  count_neg = 0
  count_zero = 0
  prod = 1

  if size == 1
    list[0]
  end

  for i in 0..size-1

    # If number is 0, we don't
    # multiply it with product.
    if list[i] == 0
      count_zero = count_zero + 1
    end

    if list[i] < 0
      count_zero = count_neg + 1
      max_neg = [max_neg, list[i]].max
    end

    if list[i] > 0
      min_pos = [min_pos, list[i]]
    end

    prod = prod * list[i]
  end

  if count_zero == size || (count_neg == 0 && count_zero > 0)
    0
  end

  if count_neg == 0
    min_pos
  end

  if count_neg % 1 == 0 && count_neg != 0
    prod = (prod / max_neg).to_i
  end

  prod
end

puts minimum_product(list, size)
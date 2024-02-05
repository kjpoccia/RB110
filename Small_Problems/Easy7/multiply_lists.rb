def multiply_list(array1, array2)
  index = 0
  sum_array = []
  while index < array1.length
    sum_array[index] = array1[index] * array2[index]
    index += 1
  end
  sum_array
end

p multiply_list([3, 5, 7], [9, 10, 11])
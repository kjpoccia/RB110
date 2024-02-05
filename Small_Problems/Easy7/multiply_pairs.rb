def multiply_all_pairs(array1, array2)
  array3 = array1.product(array2)
  array3.map! do |arr|
    arr[0] * arr[1]
  end
  array3.sort!
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
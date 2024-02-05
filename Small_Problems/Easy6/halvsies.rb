def halvsies(array)
  n = (array.length / 2.0 ).ceil
  array1 = array[0..(n - 1)]
  array2 = array[n..(array.length - 1)]
  [array1, array2]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 2, 3, 4, 5])
p halvsies([5])
p halvsies([])
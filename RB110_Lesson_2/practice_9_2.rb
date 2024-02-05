arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_array = arr.map do |sub_array|
  sub_array.sort.reverse
end

p new_array

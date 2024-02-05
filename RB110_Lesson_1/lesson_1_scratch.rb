arr = [1, 2, 3, 4, 5]

i = 0

loop do
  arr[i] += 1
  i += 1
  break if i == arr.size
end

p arr
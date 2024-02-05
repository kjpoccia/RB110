arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted = arr.sort_by do |arr|
  arr.select do |num|
    num % 2 == 1
  end
end

p sorted
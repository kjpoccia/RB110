def sum_of_sums(array)
  length = array.size
  sum = 0
  counter = 0

  loop do
    sum += array[counter] * (length - counter)
    counter += 1
    break if counter == length
  end

  sum
end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([4])
p sum_of_sums([1, 2, 3, 4, 5])

# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

=begin
Problem:
- Given an array, if it has at least 5 elements, return the minimum sum of 5 consecutive elements
- For an array of fewer than 5 elements, return nil
- Input is an array
- Output is an integer

Examples:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

Data:
- Array

Algorithm:
- Use a range (0..-5) to iterate through the array and calculate the sum of each grouping of 5 consecutive elements
- If a calculated sum is smaller than the stored sum, replace the sum with the calculated sum

=end

def minimum_sum(array)
  start = array.length
  return nil if start < 5
  min_sum = array[0..4].sum
  (-start..-5).each do |i|
    if array[i..(i + 4)].sum < min_sum
      min_sum = array[i..i+4].sum
    end
  end
  min_sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".
=begin
Problem:
Given an array of integers, return the two numbers that are closest together in an array
What do we do with an array with 1 element? No elements?
  What about an array with duplicates?

Examples:
# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

Data:
- An array

Algorithm:
- The method will take an array as an argument
- Initialize a variable dif = the difference between the first two elements (absolute value)
- Initialize an array closest = the first two elements
- Iterate through the array, using the current element as the reference
- Iterate through again and taking the difference between each element and the reference element and if the difference
is smaller than the dif, store the two elements in the closest array
- Return the closest array

=end

def closest_numbers(array)
  closest = [array[0], array[1]]
  dif = (array[0] - array[1]).abs
  array.each_with_index do |ref, ref_idx|
    break if ref_idx == array.length - 1
    array.each_with_index do |num, idx|
      next if ref_idx == idx
      if (array[idx] - array[ref_idx]).abs < dif
        closest[0] = array[ref_idx]
        closest[1] = array[idx]
        dif = (array[idx] - array[ref_idx]).abs
      end
    end
  end
  closest
end

p closest_numbers([5, 25, 15, 11, 20])
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
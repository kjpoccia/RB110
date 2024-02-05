# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

=begin
Problem:
- Given an array, return how many numbers for each number are smaller than it. 
- Only count unique values

Examples:

Data:
- Create an array of just the unique values
- Hash to store the count for each value
- Return an array of the keys

Algorithm:
- The method takes an array as an argument
- Create a copy of the array, remove duplicates from that array using uniq
- Iterate through the array, adding the element to a hash object as a key, and then increasing the value by one each time a number smaller than it is encountered
- Return the keys in array form
=end

def smaller_numbers_than_current(array)
  remove_duplicates = array.dup.uniq 
  count_hash = remove_duplicates.each_with_object(Hash.new(0)) do |num, hsh|
    remove_duplicates.each do |n|
      hsh[num] += 1 if n < num
    end
  end
  array.map do |num| 
    count_hash[num]
  end
end

p smaller_numbers_than_current([8,1,2,2,3])
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
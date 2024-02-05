=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples

[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

Problem:
- Given an array of integers, return the number of pairs (2 integers that are equal) that occur in the array
- An integer can only be part of one pair

Examples:

Data:
- An array

Algorithm:
- Method takes an array, create a new array of the unique values in the array
- If the array has fewer than 2 elements, return 0
- Initialize a count = 0
- Iterate through the unique values array and within that iteration, iterate through the full array and count the number
of occurences for each element. Divide the result by two, add it to the count
=end

def pairs(array)
  return 0 if array.length < 2
  unique = array.uniq
  pair_count = 0
  unique.each do |ref_num|
    count = 0
    count += array.count(ref_num)
    pair_count += count/2
  end
  pair_count
end

p pairs([1, 2, 5, 6, 5, 2])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])


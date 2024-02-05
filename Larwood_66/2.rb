=begin
Find all pairs

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
Given an array, return the count of distinct pairs that occurs in the array. So each number, when part of a pair, will only be counted 
toward one pair
Empty arrays return 0

Algorithm:
For each number, iterate through the remaining numbers in the array and add to a pair counter if it occurs again. 
More specifically:
  Initialize a variable pair_counter = 0
  Copy the array and sort it
  For the first number in the array, assign the number to a variable (num)
    Iterate through the indices that come after num and, if it encounters a mate, increase the pair counter by one and skip the next index. 
    Stop when we've reached the last index of the array
=end

def pairs(array)
  pair_counter, index_counter = 0, 0
  sorted = array.sort

  loop do
    break if index_counter >= array.length - 1
    if sorted[index_counter] == sorted[index_counter + 1]
      pair_counter += 1
      index_counter += 2
    else
      index_counter += 1
    end
  end
  pair_counter
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0



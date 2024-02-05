=begin
Problem:
  - Given an array
  - Output another? array object, with the elements reversed

Examples:
  - [1, 2, 3, 4] => [4, 3, 2, 1]
  - ["a", "b", "c", "d"] => ["d", "c", "b", "a"]
  - [] => []

Algorithm:
- The method takes the array
- Initialize an empty array
- Initialize a variable = length of the input array
- Use each with index to access each element of the array (length - index - 1)
- Add the element to the output array at position index

Pseudocode:
def method(array)
  Initialize new_array to empty array
  Initialize length to array.length
  array.each_with_index 
    new_array[index] = array[length - index - 1]
  end
end
=end

def reverse(array)
  reversed = []
  length = array.length
  array.each_with_index do |_, index|
    reversed[index] = array[length - index - 1]
  end
  reversed
end


p reverse([1, 2, 3, 4]) #=> [4, 3, 2, 1]
p reverse(["a", "b", "c", "d"]) #=> ["d", "c", "b", "a"]
p reverse([]) #=> []

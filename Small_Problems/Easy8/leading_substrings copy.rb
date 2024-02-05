=begin
Turn the string into an array of letters, then cycle through the array using each_index and create sub arrays of increasing length.
Each subarray should be joined at the end to create a string object, which is then added to the result array
=end

def leading_substrings(string)
  array = string.split('')
  result = []
  array.each_index do |index|
    result << array[0..index].join
  end
  result
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
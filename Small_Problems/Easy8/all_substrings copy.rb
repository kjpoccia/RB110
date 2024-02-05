=begin
Use upto to iterate through the string at each letter and then call leading_subtrings to get the substrings for each letter
=end

def leading_substrings(string)
  array = string.split('')
  result = []
  array.each_index do |index|
    result << array[0..index].join
  end
  result
end

def substrings(string)
stop = string.size - 1
result = []
  (0).upto(string.size - 1) do |index|
    result.concat(leading_substrings(string[index..stop]))
  end
  result
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
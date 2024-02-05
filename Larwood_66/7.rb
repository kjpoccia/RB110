=begin
Given an array of strings, return the nth letter of each word, where n is the position of the word in the array, concatenated together into a string

Algorithm:
- Iterate through the array and add the appropriate letter to a return string

=end

def nth_char(arr)
  string = ""
  arr.each_with_index { |word, i| string << word[i] }
  string
end

array = ["yoda", "best", "has"]

p nth_char(array)
p nth_char([]) #== ''
p nth_char(['X-ray']) #== 'X'
p nth_char(['No', 'No']) #== 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) #==  'Codewars'

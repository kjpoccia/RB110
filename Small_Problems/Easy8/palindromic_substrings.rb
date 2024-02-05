=begin
Use upto to iterate through the string at each letter and then call leading_subtrings to get the substrings for each letter
=end

def is_palindrome?(string)
  string == string.reverse && string.size > 1
end

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

def palindromes(string)
  result = []
  substring_array = substrings(string)
  substring_array.each do |word|
    result << word if is_palindrome?(word)
  end
  result
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
def leading_substrings(string)
  strings = []
  counter = 0

  loop do
    break if counter == string.length
    strings << string.slice(0..counter)
    counter += 1
  end

  strings
end




p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
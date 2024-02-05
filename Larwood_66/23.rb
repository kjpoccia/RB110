=begin
- Create a substring of just the first letter
- Iterate through the rest of the string, add the next letter to the substring if
the letter index in the reference alphabet is bigger than the reference index 
of the last substring letter. If it's not bigger, replace the substring with 
that letter.
=end

require 'pry-byebug'

def longest(string)
  return string if string.length == 1
  counter = 1
  substring = string[0]
  longest = string[0]
  loop do
    if string[counter] >= substring[-1]
      substring << string[counter]
    else
      substring = string[counter]
    end
    counter += 1
    longest = substring if longest.length < substring.length
    break if counter > string.length - 1
  end
  longest
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

#require 'pry'

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

def all_substrings(string)
  strings = []
  counter = 0

  loop do
    break if counter == string.length
    current_string = string[counter..-1]
    strings.concat(leading_substrings(current_string))
    counter += 1
  end

  strings
end

p all_substrings('abcde')
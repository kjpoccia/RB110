=begin
Use split to create an array of the words, then use each to iterate through the words and check to see if they are 5 letters or more. If so, add the reversed
string to the result string, otherwise add the original string to the result string.
=end

def reverse_words(string)
  result = []
  string.split(' ').each do |word|
    if word.size > 4
      result << word.reverse
    else
      result << word 
    end
  end
  result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
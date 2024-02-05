=begin
- Split the string into words
- Iterate through the array, if the word is the first word or the word is fewer than 5 characters, do nothing
- Otherwise, reverse it
=end

def spinWords(string)
  string.split.map do |word|
    if word.length < 5
      word
    else
      word.reverse
    end
  end.join(' ')
end

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
p spinWords('test') == 'test'


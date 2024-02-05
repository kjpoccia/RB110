=begin
Suppose we need a method that retrieves the middle word of a phrase/sentence. What edge cases need to be considered? 

5 word sentence, return 3rd word (index 2 or index -3)
4 word sentence, return 2nd and 3rd word (index 1 and 2 or index -2 and -3)

Edge cases:
  One word string - We would return that word
  Empty string - Return a blank string
  Even number of words - return the two middle words
=end

def return_middle(string)
  array = string.split(' ')
  num_words = array.length
  start = num_words/2
  if array.empty?
    " "
  elsif num_words.even?
    array[start - 1..start].join(' ')
  else
    array[start]
  end
end

p return_middle("This is a test")
p return_middle("This is a test again")
p return_middle("This")
p return_middle('')

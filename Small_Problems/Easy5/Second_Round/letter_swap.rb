=begin
I think we can just turn the sentence into an array, then for each word we can swap the first and last letter 
=end

def swap(sentence)
  word_array = sentence.split(' ')
  new_sentence = []
  word_array.each do |word|
    word[0], word[-1] = word[-1], word[0]
    new_sentence << word
  end
  new_sentence.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
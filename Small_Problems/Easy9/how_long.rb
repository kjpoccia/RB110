=begin
Use split to get an array of just the words, then use inject to create an array of the word, a space, and the length of the word
=end

def word_lengths(string)
  array = string.split
  array.inject([]) do |result, word|
    result << "#{word} #{word.length}"
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"] 

p word_lengths("baseball hot dogs and apple pie") == ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"] 

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"] 

p word_lengths("Supercalifragilisticexpialidocious") == ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

=begin
Create an array, but from each word delete characters that aren't letters
Then send the array through the same inject method as the other exercise.
=end

def word_sizes(sentence)
  no_chars = sentence.split(' ').map do |word|
    word.delete('^a-zA-Z')
  end

  no_chars.inject(Hash.new(0)) do |memo, word|
    memo[word.size] += 1
    memo
  end
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
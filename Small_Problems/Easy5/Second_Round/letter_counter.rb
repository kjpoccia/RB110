=begin
Create an array of the words in the sentence.
Then use inject to add the count of letters to the hash
=end

def word_sizes(sentence)
  sentence.split(' ').inject(Hash.new(0)) do |memo, word|
    memo[word.size] += 1
    memo
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}


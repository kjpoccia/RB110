def word_sizes(string)
  word_size_hash = Hash.new(0)
  string.split.each do |word|
      word_size_hash[word.length] += 1
  end
  word_size_hash
end

puts word_sizes('Four score and seven.')
puts word_sizes('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes("What's up doc?")
puts word_sizes('')
def clean_word(word)
  clean = word.chars.delete_if {|x| !(( x.ord < 123 && x.ord > 96) || ( x.ord < 91 && x.ord > 64))}
end

def word_sizes(string)
  word_size_hash = Hash.new(0)
  string.split.each do |word|
    clean = clean_word(word)
    word_size_hash[clean.length] += 1
  end
  word_size_hash
end

puts word_sizes('Four score and seven.')
puts word_sizes('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes("What's up doc?")
puts word_sizes('')
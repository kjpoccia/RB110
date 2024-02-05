# def titleize(string)
#   small_words = %w(a an for the of and in on)
#   words = string.split
#   words[0].capitalize!
#   words[-1].capitalize!

#   words.map! do |word|
#     if small_words.include?(word)
#       word
#     else
#       word.capitalize
#     end
#   end

#   words.join(' ')
# end

# string = "a lovely and interesting title"
# p titleize(string)

words = "the flintstones rock"

def titleize(string)
  small_words = %w(a an for the of and in on)
  words = string.split
  words[0].capitalize!

  p words

  words.map! do |word|
    if small_words.include?(word)
      word
    else
      word.capitalize
    end
  end

  words.join(' ')
end

words = titleize(words)

p words

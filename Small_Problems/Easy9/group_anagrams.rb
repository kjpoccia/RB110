=begin
Use each to sort through the words in the array. For each word, split the word into an array of letters, sort the array, and join it. That will be
a key in a hash. The original word will be a value. Return the values
=end
require 'pry-byebug'

def group_anagrams(array)
  array.inject(Hash.new([])) do |result, word|
    sorted_word = word.split('').sort.join
    result[sorted_word] += [word] #why doesn't << work here?
 #   binding.pry
    result
  end.values
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p group_anagrams(words)
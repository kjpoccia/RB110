# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

=begin
Problem:
- Given a string of words, return a string (same string?) with every second letter of every third word capitalized

Examples:
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

  Data:
  - Array of words

  Algorithm:
  - The method takes the string as an argument
  - Create an array of the words in the string
  - Iterate through the array of words, if the index + 1 is divisible by 3, iterate through the word, and if the character index + 1 is divisible by 2, capitalize the letter
  and add it to the return string
    Otherwise, just add the original letter to the return string
=end

require "pry-byebug"

def to_weird_case(string)
  array_of_words = string.split(" ")
  new_array = []
  array_of_words.each_with_index do |word, idx|
    new_word = ''
    if (idx + 1) % 3 == 0
      word.each_char.with_index do |char, char_idx|
        if (char_idx + 1) % 2 == 0
          new_word << char.upcase
        else
          new_word << char
        end
      end
      new_array << new_word
    else
      new_array << word
    end
  end
  new_array.join(" ")
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing')
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'



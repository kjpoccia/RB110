=begin
# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

  Problem:
  - Given a string, return a string with every third word altered to have every second character converted to uppercase

  Examples:
  Above

  Data:
  Convert to an array of words

  Algorithm:
  - The method takes a string, initialize a variable array = string.split(' ')
  - Use each with index to iterate through the array, when the index + 1 % 3 == 0, iterate through the word
  - Iterate through the word with index, when the index.odd? switch the char to an uppercase
  - Join the array back together with spaces
=end

def to_weird_case(string)
  array = string.split(' ')
  array.each_with_index do |word, word_idx|
    if (word_idx + 1) % 3 == 0
      word.each_char.with_index do |char, char_idx|
        if char_idx.odd?
          word[char_idx] = word[char_idx].upcase
        end
      end
    end
  end
  array.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing')
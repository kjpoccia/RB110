=begin
Create a constant array of all the letters, and another array of just the vowels. Iterate through the string and if it's in the array of all the letters,
but not in the array of the vowels, then double it
=end

ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a
VOWELS = %w(A E I O U a e i o u)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if ALPHABET.include?(char) && !VOWELS.include?(char)
      result << char << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
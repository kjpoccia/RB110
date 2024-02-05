# Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order.
# Whitespace and punctuation shall simply be removed!
# The input is restricted to contain no numerals and only words containing the english alphabet letters.

=begin
Problem:
- Given a string, return a new string
- Returned string has characters in alphabetical order, case insensitive
- Returned string has no whitespace or punctuation

Examples:
p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"

Data:
- Input is a string
- Output is a string
- Reference a constant array of upper and lowercase letters

Algorithm:
- Initialize a constant array object to all letters, upper and lowercase
- Define a method to take a string as a parameter
  - Initialize an empty array object
  - Iterate through the string and add the letter to the array if it appears in the constant array
  - Sort the array by lowercase letters
  - Return the array.join
=end

ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def alphabetized(string)
  just_letters = []
  string.each_char do |char|
    just_letters << char if ALPHABET.include?(char)
  end
  #just_letters.sort_by!(&:downcase).join
  just_letters.sort_by! do |char|
    char.downcase
  end.join
end

p alphabetized("The Holy Bible") #== "BbeehHilloTy"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
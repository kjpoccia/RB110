=begin
Use a constant, string object containing all vowels. Use map to iterate through the words and the delete method to delete vowels.
=end

require "pry-byebug"

VOWELS = "aeiouAEIOU"

def remove_vowels(array)
  array.map do |word|
    word.delete(VOWELS)
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
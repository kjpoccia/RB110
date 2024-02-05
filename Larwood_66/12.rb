=begin
- Create an array of all the letters
- Sort through the string and, if you encounter a letter that is in the alphabet array, remove it from
the alphabet array
- If the alphabet array is not empty at the end, return false

=end

def panagram?(string)
  alphabet = ('a'..'z').to_a
  string.downcase.each_char { |char| alphabet.delete(char) }
  alphabet.empty?
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false

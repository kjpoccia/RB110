=begin
Problem:
- We are given 13 pairs of letters. Only one letter within each pair can be used at a time, and only once
- Method should return true or false indicating if the word can be spelled 
- Per the examples, case doesn't matter

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Data: 
- Array of subarrays for the letter pairs

Algorithm:
- Initialize a constant to an array object, containing sub arrays of the pairs of letters
- Given a word, upcase it, iterate through each letter and check to see if letter's mate, or the letter itself occurs in the rest of the word
  - Char is B
  - Iterate through BLOCKS, if sub_array contains B, assign other letter to variable
  - Iterate through string, count number of Bs and other letter, if the result is greater than 1, return false
- Return false if so
- Otherwise return true

=end

BLOCKS = [["B","O"], ["G", "T"], ["V", "I"], ["X", "K"], ["R", "E"], ["L", "Y"], ["D", "Q"], 
          ["F", "S"], ["Z", "M"], ["C", "P"], ["J", "W"], ["N", "A"], ["H", "U"]]

def block_word?(string)
  string.upcase.each_char do |char|
    BLOCKS.each do |block|
      if block.include?(char)
        ref = block.join
        num = string.upcase.count(ref)
        return false if num > 1
      end
    end
  end
  true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
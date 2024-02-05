
=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. 
In the alphabet, a and b are also in positions 1 and 2. 
Notice also that d and e in abode occupy the positions they would occupy in the alphabet, 
which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy their 
positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

Algorithm:
Create an array of letters in alphabetical order
Create a submethod that will iterate through a string, compare each letter's position to
its position in the alphabet array, and increase count by 1 each time those positions are the
same. The submethod will return that count
In the main method, loop through the input array and add the result of the submethod
call to a result array
=end

ALPHABET = ('a'..'z').to_a

def correct_position(string)
  count = 0
  string.each_char.with_index do |char, idx|
    count += 1 if idx == ALPHABET.index(char.downcase)
  end
  count
end

def solve(array)
  result = []
  array.map { |word| correct_position(word) }
end

p solve(["abode","ABc","xyzD"]) == [4, 3, 1]

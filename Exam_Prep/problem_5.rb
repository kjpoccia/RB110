# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".

=begin
Problem:
- Return the character that occurs least often in a given string
- If there are multiple characters that occur the same least number of times, return the one that occurs first
- Case is insensitive, return lowercase version

Examples:
As above

Data:
Array

Algorithm:
- Method takes the input array as an argument
- Use downcase, then split to create an array of downcase characters
- Initialize a char_counter to 1
- Initialize a string object least_common to the first letter
- Iterate through the array, increase current_counter if the character shows up again. If current_character < char_counter, 
replace char_counter with current_counter and replace least_common with the current_char
- Return current_char

=end

def least_common_char(string)
  char_array = string.downcase.split('')
  least_common = char_array[0]
  char_counter = char_array.count(least_common)

  char_array.each do |char|
    if char_array.count(char) < char_counter
      least_common = char
      char_counter = char_array.count(char)
    end
  end
least_common
end

p least_common_char("Hello World")
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'
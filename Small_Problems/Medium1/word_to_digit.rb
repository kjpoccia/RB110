=begin
Problem:
- Take a string as an input
- Return the string with the numbers in word form returned as numerals

Example:
- 'Please call me at five five five one two three four. Thanks.'
Please call me at 5 5 5 1 2 3 4. Thanks.

Data structures:
A hash to decode the numbers
Turn the string into an array to cycle through the sentence

Algorithm:
Given a string, turn it into an array of words
Need to figure out the punctuation
  - I think an array with all punctuation. If it matches one in there, store it and add it back in after
Use a hash to map the numbers. need to lowercase them

=end

require "pry-byebug"

DIGITS = {"zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5",
          "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"}

PUNCTUATION = %w(! . , ? ; :)

def word_to_digit(string)
  string.split(' ').map do |word|
    if PUNCTUATION.include?(word[-1])
#      binding.pry
      if DIGITS.keys.include?(word[0..-2])
        DIGITS[word[0..-2]] + word[-1]
      else
        word
      end
    elsif DIGITS.keys.include?(word)
      DIGITS[word]
    else
      word
    end
  end.join(' ')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
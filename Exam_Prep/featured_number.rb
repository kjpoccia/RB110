=begin
Problem:
- Given an integer, return the next number that is 1) divisible by 7 2) odd 3) has no repeated digits
- Return an error if there is no next featured number

Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

Data structures:


Algorithm:
- Write a method that takes an integer as an argument
- Set the counter = input, increase to get to next number divisible by 7
  num.modulo(7) == x => 20.modulo(7) = 6
  counter = (7 - x) + num => 21
- Use a loop:
  - check to see if there are 11 digits in the number, if so return error
  - check to see if num is odd, if not counter += 7
  - if it is, use digits.each to count the number of occurences of each number. If > 1, counter += 7

=end

require "pry-byebug"

def featured(num)
  counter = (7 - num.modulo(7)) + num
  loop do
    if counter.digits.size > 10
      return "There is no possible number that fulfills those requirements"
    elsif counter.even?
      counter += 7
      next
    elsif counter.to_s.split('').uniq == counter.to_s.split('')
        return counter
    else
        counter += 7
    end
  end
  counter
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987)   == 1_023_456_987 

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

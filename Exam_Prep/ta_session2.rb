# Have the method division_stringified(num1, num2) take both parameters being passed, divide num1 by num2, and return the result as a string with properly formatted commas.
#
# If an answer is only 3 digits long, return the number with no commas.
#
# Example: if num1 is 123456789 and num2 is 10000 the output should be "12,346".
#
# Note: 2 divided by 3 should return '1'

=begin
Problem: 
- Given two integers, divide the first one by the second one
- Return the number as a string, with commas placed every fourth character from the right
- Numbers should be rounded

Examples:

p division_stringified(2, 3) == "1"
p division_stringified(5, 2) == "3"
p division_stringified(7, 3) == "2"
p division_stringified(6874, 67) == "103"
p division_stringified(503394930, 43) == "11,706,859"
p division_stringified(1, 10) == "0"
p division_stringified(100000, 1) == "100,000"

Data:
- Input is two numbers
- Output is a string object

Algorithm:
- Method takes two numbers as arguments, divides them, converting one to a float and rounding. Call digits to get each number in reverse order. 
- (2/3.to_f).round.digits = [1] Store result in variable. (503394930/43.to_f).round.digits = [9, 5, 8, 6, 0, 7, 1, 1]
- Create new empty array object
- Use each with index to add each digit, using unshift, if index % 3 == 0, then add a comma first
=end

# def division_stringified(num1, num2)
#   arr = (num1/num2.to_f).round.digits
#   result = []
#   arr.each_with_index do |num, idx|
#     result.unshift(",") if (idx % 3 == 0 && idx != 0)
#     result.unshift(num.to_s)
#   end
#   result.join
# end

def division_stringified(int1, int2)
  integer = (int1/int2.to_f).round
  integer = integer.to_s.reverse
  integer = integer.chars.each_slice(3)#.map(&:join)
 # integer.join(',').reverse
end

p division_stringified(2, 3) #== "1"
p division_stringified(5, 2) #== "3"
p division_stringified(7, 3) #== "2"
p division_stringified(6874, 67) #== "103"
p division_stringified(503394930, 43) #== "11,706,859"
p division_stringified(1, 10) #== "0"
p division_stringified(100000, 1) #== "100,000"
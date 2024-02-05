=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

Adapted from Project Euler.

Problem:
Given a string of digits, return the greatest product that can be calculated from 5 consecutive digits

Algorithm:
- Call to_i on the input, and then digits.reverse to get an array with each digit
- Initialize a variable product = the product of the first 5 elements
- Iterate through the array and calculate the product of each 5 consecutive elements, replacing the product variable if a larger number is calculated
- Return product

=end

require "pry-byebug"

def greatest_product(string)
  array = string.split('').map {|num| num.to_i}
  product = array[0..4].inject(:*)
  array[-array.length..-5].each_with_index do |_, idx|

    current_product = array[idx..idx+4].inject(:*)
    if current_product > product
      product = current_product
    end
  end
  product
end

#p greatest_product("123834539327238239583")
p greatest_product("003246")
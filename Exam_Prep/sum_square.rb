=begin
Problem:
- Find the difference of two numbers when given num:
  - The sum of the numbers 1 through num, squared
  - The square of each number 1 through num, summed

Examples:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10)**2 = 3025

sum_square_difference(1) == 0
  (1)**2 - (1**2)
sum_square_difference(100) == 25164150

Data:
- Array

Algorithm:
- Write a method to take a number as an argument
- First, to calculate the square of sum, use a range (1..num).sum**2
- Second, use a range (1..num) and use each to square each number and add it to the sum
- Lastly, return the difference of the two calculated numbers
=end

def sum_square_difference(num)
  square_of_sum = (1..num).sum ** 2
  sum_of_squares = 0
  (1..num).each do |n|
    sum_of_squares += n**2
  end

  square_of_sum - sum_of_squares
end

p sum_square_difference(3)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)
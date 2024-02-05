=begin
Max rotation:
- For a number of n digits, rotation needs to happen n - 1 times
- Take a number, get the number of digits
- Use a loop to rotate the digits 
  - First time through, rotate the right-most n digits
  - Second time through, rotate the right-most n - 1 digits
  - Third time through, rotate the right-most n - 2 digits
  - And so forth, until the counter = the number of digits
=end

require "pry-byebug"

def rotate_array(array)
  result = []
  array.each_with_index do |element, idx|
    result << element if idx > 0
  end
  result << array[0]
  result
end

def rotate_rightmost_digits(num, n)
  rotate_this_array = num.digits.reverse[-n..-1]
  stop_at = num.digits.size - n - 1
  if stop_at < 0
    rotate_array(rotate_this_array).join.to_i
  else
    dont_rotate = num.digits.reverse[0..stop_at]
    dont_rotate += rotate_array(rotate_this_array)
    dont_rotate.join.to_i
  end
end

def max_rotation(num)
  counter = num.digits.size
  while counter > 0
 #   binding.pry
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num
end




p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_009_146) == 7_301_609_840


#8,703,529,146 keep 0 digits stable
#7,035,291,468 keep 1 digit stable
#7,352,914,680 keep 2 digits stable
#7,329,146,805 keep 3 digits stable
#7,321,468,059 keep 4 digits stable
#7,321,680,594 keep 5 digits stable
#7,321,605,948 keep 6 digits stable
#7,321,609,485 keep 7 digits stable
#7,321,609,854 keep 8 digits stable
#7,321,689,845
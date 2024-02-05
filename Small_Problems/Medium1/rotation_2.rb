=begin
- Method takes an array of n elements
- Iterate through and add elements 2-n to result array
- Add first element to end of result array
=end

def rotate_array(array)
  result = []
  array.each_with_index do |element, idx|
    result << element if idx > 0
  end
  result << array[0]
  result
end

def rotate_integer(num)
  rotate_array(num.digits.reverse).join.to_i
end

def rotate_rightmost_digits(num, n)
  rotate_num = num % (10 ** n)
  dont_rotate = num - rotate_num
  dont_rotate + rotate_integer(rotate_num)
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

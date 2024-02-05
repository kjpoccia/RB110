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

def rotate_string(string)
  rotate_array(string.split('')).join
end

def rotate_integer(num)
  rotate_array(num.digits.reverse).join.to_i
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]   

p rotate_string("Iris")   
p rotate_integer(12345)           # => true


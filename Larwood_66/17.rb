=begin
- Convert the number into an array of digits in ascending order
- Iterate through the array, if the number is non-zero, multiply it by 10 to the power of its index, convert it to a string
and add it to a return array
- Join with a plus sign
=end

def expanded_form(num)
  return_array = []
  num.digits.each_with_index do |n, idx|
    return_array << n * 10 ** idx if n != 0
  end
  return_array.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

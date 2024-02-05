=begin
Write a method to take a number, check if it's a double number, and if not, return the number * 2. If it is, return the number.
Need a helper method which will check if it has an even number of digits. If it doesn't, return false. If it does,
check if the first half of the number = the second half of the number
=end

def double?(num)
  num_digits = num.digits.size
  mid_point = num_digits / 2
  if num_digits % 2 == 0
    num.digits[0..(mid_point - 1)] == num.digits[mid_point..(num_digits - 1)]
  else
    false
  end
end

def twice(num)
  return num if double?(num)

  return num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
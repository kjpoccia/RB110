=begin
- Split the number into digits and store its sum
- While the digits length is greater than 1, calculate the product, iterate a counter, and replace the num
=end

def persistence(num)
  count = 0
  while num.digits.length > 1
    count += 1
    num = num.digits.inject(:*)
  end
  count
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4

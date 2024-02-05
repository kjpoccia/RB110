=begin
Delete the smallest digit in the number.
Receive the integer, turn into array of digits, find the index of the smallest number, delete it, rejoin the number
=end

def delete_a_digit(num)
  arr = num.digits.reverse
  arr.each_index do |i|
    if i == (arr.size - 1) || arr[i] < arr[i+1]
      arr.delete_at(i)
      break
    else
      next
    end
  end
  arr.join.to_i
end

p delete_a_digit(152)
p delete_a_digit(1001)
p delete_a_digit(426710)
p delete_a_digit(10)
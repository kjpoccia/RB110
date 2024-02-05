=begin
use a range, add each number to a result array if they are divisible by 3 or by 5
sum the array
=end

def solution(number)
  (1..number - 1).select { |x| x % 3 == 0 || x % 5 == 0 }.sum
end

p solution(10)
p solution(20)
p solution(200)
p solution(-200)
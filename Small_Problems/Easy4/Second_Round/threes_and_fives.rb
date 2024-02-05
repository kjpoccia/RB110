=begin
Create an array containing all of the numbers from 1 to the number given
For each number, check if it's divisible by 3 or 5 and if so, add it to running total

=end

# def multisum(num)
#   counter = 1
#   sum = 0

#   loop do
#     break if counter > num
#     if counter % 3 == 0 || counter % 5 == 0
#       sum += counter
#     end
#     counter += 1
#   end
#   sum
# end

def multisum(num)
  (1..num).inject(0) do |sum, value|
    sum += value if (value % 3 == 0 || value % 5 == 0)
    sum
  end
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


=begin
Use up to to create an array containing all the numbers up to the given number
=end

def sequence(num)
  array = []
  (1).upto(num) { |i| array[i - 1] = i }
  array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
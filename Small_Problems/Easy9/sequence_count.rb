=begin
first number is a count
second is the starting number
each number is a multiple of the starting number

Use a for loop. 
=end

def sequence(a, b)
  result = []
  for i in 1..a do 
    result << (b * i)
  end
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
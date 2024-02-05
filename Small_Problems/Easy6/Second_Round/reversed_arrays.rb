=begin
I forget what it's called, but use the ruby swap process to exchange the first element with the last, etc., using each_with_index
=end

def reverse!(array)
  array.each_with_index do |item, index|
    break if index == array.size / 2
    array[index], array[-index - 1] = array[-index - 1], array[index]
  end
  array
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true 

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # truep 

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # truep 

p list = []
p reverse!(list) == [] # true
p list == [] # true
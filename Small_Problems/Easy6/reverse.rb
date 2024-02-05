def reverse!(array)
  i = 0
  n = array.length - 1
  until i == array.length / 2 do
    array[i], array[n - i] = array[n - i], array[i]
    i += 1
  end
  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result
p list
p result.object_id
p list.object_id

list = %w(a b e d c)
result = reverse!(list)
p result
p list
p result.object_id
p list.object_id

list = ['abc']
result = reverse!(list)
p result
p list
p result.object_id
p list.object_id

list = []
result = reverse!(list)
p result
p list
p result.object_id
p list.object_id
def reverse(array)
  array.inject([], :unshift)
end

list = [1, 2, 3, 4]
result = reverse(list)
p result
p list
p result.object_id
p list.object_id
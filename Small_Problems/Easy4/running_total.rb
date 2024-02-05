def running_total(array)
  position = 0
  total_array = []

  while position < array.length
    total_array[position] = array.take(position + 1).sum
    position += 1
  end

  total_array
end

# could have been accomplished with .map - try to do this later

#Further exploration - each_with_object

def running_total2(array)
  total_array = array.each_with_object([]) do |x, obj|
    obj << x + obj.last(1).sum
  end
end

p running_total2([2, 5, 13])
p running_total2([14, 11, 7, 15, 20])
p running_total2([3])
p running_total2([])
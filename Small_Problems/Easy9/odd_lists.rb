=begin
Use each with index to check if an index is odd, if so add the element to the result array
=end

#Way #1
# def oddities(array)
#   result = []
#   array.each_with_index do |element, idx|
#     result << element if idx.even?
#   end
#   result
# end

#Way #2
# def oddities(array)
#   counter = 0
#   result = []
#   loop do
#     break if counter == array.size
#     result << array[counter] if counter.even?
#     counter += 1
#   end
#   result
# end

#Way #3
def oddities(array)
  array.select do |num|
    array.index(num).even?
  end
end



p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
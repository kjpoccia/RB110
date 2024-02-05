=begin
Use a loop and a counter, when the counter is even, add the object from the first array to the third array, 
when it's odd add it to the second array
=end

# def interleave(array1, array2)
#   counter = 0
#   result = []
#   loop do
#     result << array1[counter] << array2[counter]
#     counter += 1
#     break if counter == array1.size
#   end
#   result
# end

#rewritten using zip

def interleave(array1, array2)
  array1.zip(array2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
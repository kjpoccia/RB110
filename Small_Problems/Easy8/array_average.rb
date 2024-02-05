=begin
Use inject to calculate the sum of the array, then divide by the number of elements in the array
=end

def average(array)
  array.inject(:+)/array.size.to_f
end


puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40
=begin
Use inject to calculate produce of the elements in the array, divide by length
Use format to display to 3 decimal places
=end

def show_multiplicative_average(array)
  "The result is %.3f" % [array.inject(:*) / array.length.to_f]
end



p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
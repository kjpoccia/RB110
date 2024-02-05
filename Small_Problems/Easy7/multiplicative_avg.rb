def show_multiplicative_average(array)
  product = array.inject(:*)
  puts "The result is #{sprintf('%.3f', product / array.length.to_f)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
show_multiplicative_average([0])
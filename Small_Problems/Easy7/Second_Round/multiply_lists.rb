=begin
Use each with index to return the product of each element pair at the given index

Using zip...

=end

def multiply_list(arr1, arr2)
  # result = []
  # arr1.each_with_index do |element, index|
  #   result << element * arr2[index]
  # end
  # result
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
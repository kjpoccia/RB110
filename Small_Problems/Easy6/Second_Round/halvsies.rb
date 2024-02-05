=begin
initialize two arrays
Use each with index to add the first half of the elements (ceil(length/2.0) to one array, then the next half to the other
Return an array of the two arrays
=end

def halvsies(array)
  first_half = []
  second_half = []
  stopping_point = (array.length / 2.0).ceil

  array.each_with_index do |item, index|
    if index < stopping_point
      first_half << item
    else
      second_half << item
    end
  end
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]



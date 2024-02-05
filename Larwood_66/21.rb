=begin
- Iterate through the array of arrays until we encounter a 1. If we do, store
  the index in a variable, and store index of 1 in variable
=end

def mineLocation(array)
  location = nil
  sub_location = nil
  
  array.each_with_index do |arr, idx|
    if arr.include?(1)
      location = idx
      break
    end
  end

  sub_location = array[location].index(1)
  [location, sub_location]
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

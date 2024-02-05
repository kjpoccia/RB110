=begin
I can use the find method I just learned about
=end

def include?(array, element)
  array.each do |item|
    return true if item == element
  end
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
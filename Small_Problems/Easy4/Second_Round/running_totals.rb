=begin
I legitimately cannot think of a way to do this without just trying things first. Try to come back after it's done and write
  out the algorithm

  Given an array, iterate through the array with each element's index and take the sum of the first element in the array through the element
  at the current index and add it to another array
=end

def running_total(array)
  total = []

  array.each_with_index do |_, index|
    total << array[0..index].sum
  end
  total
end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []
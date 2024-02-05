=begin
Flatten, remove duplicates
Or just union?
=end

def merge(array1, array2)
  array1.union(array2)
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
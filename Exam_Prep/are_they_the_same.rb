=begin
Problem:
Given two arrays, return a boolean that indicates whether array b contains the elements in array a, squared, the same number of times that the 
element appears in array a

Examples:
comp([1, 2, 3], [1, 4, 9]) == true
comp([2, 3, 3, 4], [4, 9, 9, 16]) == true

Data:
Arrays

Algorithm:
- Iterate through array a, for each element store the count of it in a, and compare to the count of the square of that element in array b
  return false if the two numbers aren't equal
- Iterate through array b, for each element store the count of it in b, and compare to the count of the square root of that element in array a
  return false if the two numbers aren't equal

=end

def comp(arr1, arr2)
  arr1.each do |num|
    return false if arr1.count(num) != arr2.count(num**2)
  end

  arr2.each do |num2|
    return false if arr2.count(num2) != arr1.count(num2**0.5)
  end
  true
end

p comp([1, 2, 3], [1, 4, 9]) #== true
p comp([2, 3, 3, 4], [4, 9, 9, 16])

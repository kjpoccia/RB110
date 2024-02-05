=begin
Problem:
- Write a method that, when given the 3 sides of a triangle, returns whether it's equilateral, isosceles, scalene, or invalid
- Equilateral triangles have 3 sides of the same length,
- Isosceles have 2 sides of the same length
- Scalene has all sides of different lengths
- Invalid has side(s) of 0, or the two shortest sides aren't greater than the longest

Examples:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

Data:
- Add sides to an array

Algorithm:
- Add all sides to an array, sort the array
- If any element equals 0, or if arr[0] + arr[1] <= arr[2], return :invalid
- Elsif arr[0] == arr[1] == arr[2] return :equilateral
- Elsif arr[0] == arr[1] return :isosceles
- Else return :scalene

=end

def triangle(s1, s2, s3)
  arr = [s1, s2, s3].sort
  if arr.include?(0) || arr[0] + arr[1] <= arr[2]
    :invalid
  elsif arr.count(arr[0]) == 3
    :equilateral
  elsif arr[0] == arr[1] || arr[1] == arr[2]
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
=begin
Problem:
- Given 3 angles, return whether the triangle is acute, obtuse, right, or invalid
- Acute has 3 angles < 90, right has one angle == 90, obtuse has one angle > 90, invalid has one or more angles == 0, or the 3 angles sum != 180

Examples:
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

Data:
- An array

Algorithm:
- Add the three angles to an array
- If 0 occurs in the array, or if the array.sum != 180, return invalid
- If 90 occurs in the array, return :right
- If all 3 numbers are less than 90, return :acute
- If a number greater than 90 occurs, return :obtuse

=end

def triangle(a1, a2, a3)
  arr = [a1, a2, a3]
  if arr.sum != 180 || arr.include?(0)
    :invalid
  elsif arr.include?(90)
    :right
  elsif arr.all? { |num| num < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
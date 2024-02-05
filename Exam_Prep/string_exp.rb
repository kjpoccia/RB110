=begin
Create a variable called num. Cycle through the string looking at each char, and each time it encounters a number, update num
Add each non-numeric char to the result string num times 
=end

def string_expansion(s)
  result = ""
  num = 1
  s.each_char do |char|
    if char.to_i.to_s == char
      num = char.to_i
    else
      result << (char * num)
    end
  end
  result
end

p string_expansion("3D2a5d2f")

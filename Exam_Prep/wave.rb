=begin
Create a result array
Store the number of characters in the string in a variable
for (1..number of characters).times 
  if string[i] == " "
    next
  else
    string[i] = string[i].upcase
    result << string
    string[i] = string[i].downcase
    end
=end

def wave(str)
  result = []
  num = str.length - 1
  (0..num).each do |i|
    next if str[i] == " "
    result << (0..num).each_with_object("") do |s, word|
      word << (s == i ? str[s].upcase : str[s])
    end
  end
  result
end

p wave("hello")
=begin
Use a similar method as lettercase_counter. Initialize two constant arrays containing all uppercase and all lowercase letters.
Iterate through the string and, if a character is in the lowercase array, retrieve that index and use the index to get the corresponding
uppercase letter. 

Easier way would just be to see if the char.lowercase == char. And if so we call upcase. And vice versa.
=end

def swapcase(string)
  result = ''
  string.each_char do |char|
    result << (char.downcase == char ? char.upcase : char.downcase)
  end
  result
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
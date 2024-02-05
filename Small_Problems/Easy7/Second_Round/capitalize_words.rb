=begin
Use a boolean variable, set it to true to start. Iterate through the string, if a space is not encountered, flip the boolean to false, if a space
is encountered, flip it to true. 
=end

def word_cap(string)
  cap = true
  result = ''
  string.each_char do |char|
    if cap == true
      result << char.upcase
      cap = false
      next
    elsif char == " "
      cap = true
    end
    result << char
  end
  result
end

puts word_cap('four score and seven') #== 'Four Score And Seven'
puts word_cap('the javaScript language') #== 'The Javascript Language'
puts word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'
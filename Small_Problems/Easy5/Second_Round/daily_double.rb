
=begin
Within the method, create a new blank string, and then loop through the 
string provided to the method as an argument, adding each character to the string as long as string[-1] != that new character
=end

def crunch(sentence)
  new_string = ''
  sentence.each_char do |char|
    new_string << char if new_string[-1] != char
  end

  new_string
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
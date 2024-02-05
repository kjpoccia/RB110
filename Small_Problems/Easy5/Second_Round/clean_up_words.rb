=begin
Create an array of words, replace anything that's a non alphabetic character with a space. 
Then look through again any multiple spaces
=end

def cleanup(sentence)
  cleaned = sentence.chars.inject("") do |memo, char|
      if char.ord < 97 || char.ord > 122
        memo << " "
      else
        memo << char
      end
    end

 cleaned.squeeze(' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '
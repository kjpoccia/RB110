=begin
Create 2 constant arrays, one of uppercase letters, one of lowercase letters. In the method, create a hash with uppercase, lowercase, and neither
Loop through the string and use a case statement to add to the hash each time a letter is in one of the two constant arrays, or if not
add to the "neither" key-value pair.
=end

require "pry-byebug"

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

p UPPERCASE
p LOWERCASE

def letter_case_count(string)
  counter = { lowercase: 0, uppercase: 0, neither: 0}

  string.each_char do |char|
    case
    when UPPERCASE.include?(char)
      counter[:uppercase] += 1
    when LOWERCASE.include?(char)
      counter[:lowercase] += 1
    else
      counter[:neither] += 1
    end
  end
  counter
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
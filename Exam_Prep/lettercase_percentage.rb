=begin
Problem:
- Given a string, the method returns a hash object containing the percentage of characters that are uppercase, the percentage of characters that are lowercase,
and the percentage of characters that are neither
- The hash keys are lowercase, uppercase and neither
- Percentages are in float form rounded to one decimal, and they are written from 0 to 100 (ie not less than 1)
- Implicit rule: special characters count as neither, are included in the denominator

Examples:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Data:
- Array objects for uppercase letters, lowercase letters

Algorithm:
- Initialize constant array objects for all lowercase letters, uppercase letters
- Method will take string as parameter
- Store the length of the string as the denominator, in float form
- For each constant array, count the number of occurences in the string, add to a hash object as calculated
- Return hash object
=end

LOWERCASE = ("a".."z").to_a.join
UPPERCASE = ("A".."Z").to_a.join

def letter_percentages(string)
  denominator = string.size.to_f
  hsh = {}
  hsh[:lowercase] = LOWERCASE.count(string)/denominator * 100
  hsh[:uppercase] = UPPERCASE.count(string)/denominator * 100
  hsh[:neither] = 100 - hsh[:lowercase] - hsh[:uppercase]
  hsh
end

p letter_percentages('abCdef 123') #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

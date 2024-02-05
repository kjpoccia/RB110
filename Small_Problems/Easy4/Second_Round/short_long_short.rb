=begin
Problem:
  Two strings given as arguments
  Method determines longer of the strings
  Returns a new string containing the short string + long string + short string
  Strings will not be the same length
  Given a blank string, that will count as the shorter length string

Algorithm:
  The method takes two arguments, strings
  Use the size method to determine which is longer
  Return the short string + long string + short string
=end

def short_long_short(string1, string2)
  string1.size > string2.size ? string2 + string1 + string2 : string1 + string2 + string1
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

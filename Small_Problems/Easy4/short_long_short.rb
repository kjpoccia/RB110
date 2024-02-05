def short_long_short(string1, string2)
  result = ''
  string1.length > string2.length ? result << string2 << string1 << string2 : result << string1 << string2 << string1
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')
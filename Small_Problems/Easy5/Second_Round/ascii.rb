def ascii_value(string)
  string_array = string.split('')
  string_array.inject(0) do |sum, char|
    sum += char.ord
  end
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
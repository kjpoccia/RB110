def capitalize(string)
  char_array = string.chars
  char_array.map.with_index do |x, i|
    if i == 0 || char_array[i - 1] == " "
      x.upcase!
    else
      x.downcase!
    end
  end
  char_array.join
end

puts capitalize('four score and seven')
puts capitalize('the javaScript language')
puts capitalize('this is a "quoted" word')


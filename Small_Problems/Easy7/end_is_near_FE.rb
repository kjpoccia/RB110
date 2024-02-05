def middle_word(string)
  arr = string.split(' ')
  middle = arr.length / 2
  if arr != []
    arr.length.even? ? arr[middle - 1, middle].join(' ') : arr[middle]
  else
    " "
  end
end

p middle_word("This is a test")
p middle_word("This is a longer test")
p middle_word(" ")
p middle_word("This")

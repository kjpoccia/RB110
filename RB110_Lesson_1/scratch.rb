alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  puts alphabet[counter]
  break if counter == alphabet.size
  
  counter += 1
end

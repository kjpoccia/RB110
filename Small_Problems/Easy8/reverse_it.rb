=begin
Use split to create an array of the words, and then reverse the array, and then join with spaces between
=end

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
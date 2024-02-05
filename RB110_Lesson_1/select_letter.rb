question = 'How many times does a particular character appear in this sentence?'

def select_letter(string, letter)
  counter = 0
  letters = ''

  loop do
    break if counter == string.size

    if string[counter] == letter
      letters << letter
    end

    counter += 1
  end

  letters
end

p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""
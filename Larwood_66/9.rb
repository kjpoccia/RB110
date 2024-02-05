=begin
Given a string, return the same string with each word transformed in the following way:
- First and last letters in each word stay the same
- Special characters in the word stay the same (special characters are hyphen, apostrophe, comma, and period)
- The rest of the letters in the word should be sorted alphabetically

Algorithm:
- Take the given string and split into an array of words (separated by spaces)
- Pass each word to a sub-method which should:
  - Split the word into an array of characters
  - Loop through the array and do the following:
    - Create a return array that contains the same number of a character '<' as the number of characters in the input
    - Replace the first character in the return array with the first character of the input array. Same with the last.
    - If a special character appears in the input array, put that in the return array in the same place
  - Remove the first and last character from the input array. Remove the special characters
  - Sort the input array
  - Iterate through the input array, add the elements to the return array in order, unless the array already contains something
  other than '<'
  - Join the return array
- Add the returned transformed word back to a return array.
- Join the retun array with spaces
=end 

def placeholder(array)
  last = array.length - 1
  first_letter = array.join.index(/[^\.\'\-\,]/)
  last_letter = last - array.reverse.join.index(/[^\.\'\-\,]/)
  array.map.with_index do |char, idx|
    if idx == first_letter || idx == last_letter || char.match(/[\.\'\-\,]/)
      char
    else
      ">"
    end
  end
end

def remove_some(characters)
  characters.delete_if { |char| char.match(/[\.\'\-\,]/) }
  characters.delete_at(0)
  characters.delete_at(-1)
  characters
end

def transform(word)
  characters = word.split('')
  return_array = placeholder(characters)
  characters = remove_some(characters).sort
  return_array.map do |char|
    if char == ">"
      characters.shift
    else
      char
    end
  end.join
end

def scramble_words(string)
  word_array = string.split
  scrambled_words = []
  word_array.map do |word|
    transform(word)
  end.join(' ')
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

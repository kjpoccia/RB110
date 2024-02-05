=begin
- Given a string argument
- Returns a new string
- New string has all consecutive duplicate characters collapsed into a single character

Examples:
- no_duplicates("bbbbbbb") => "b"
- no_duplicates("wwooonndeeerrfull wooorrlldd") => "wonderful world"

Approach: for each character in the string, compare it to the next character, if the two characters are the same, 
delete the second character and check again. Use a helper method to return the index of the character that is the duplicate.
If there are no duplicate characters, return nil. 
1) Create dupe of string object 
2) While loop (while helper method does not equal nil)
  2a) helper method will use each_char to iterate through the string and check to see if there is a duplicate character
  If there is, the index of the first character is returned
  If there isn't, we return nil
3) index = return of helper method
4) string.slice!(index)
5) exit loop

Questions:
- Is it case sensitive?

  Pseudocode:
  def helper_method(string)
    iterate through string
      compare each letter with letter following, if the same, return index
    end
    return nil
  end

  def no_duplicates(string)
    initialize new variable to string.dup
    while helper_method(string)
      new_variable.slice!(index)
    end
end
=end

def index_of_duplicate(string)
  string.each_char.with_index do |char, idx|
    return idx if string[idx] == string[idx + 1]
  end
  nil
end

def no_duplicates(string)
  return "Invalid input" unless string.is_a?(String)
  no_dupes = string.dup
  while index_of_duplicate(no_dupes)
    no_dupes.slice!(index_of_duplicate(no_dupes))
  end
  no_dupes
end


p no_duplicates("bbbbbbb") # "b"
p no_duplicates("wwooonndeeerrfull wooorrlldd") #=> "wonderful world"
p no_duplicates(1234) #=> "Invalid input"
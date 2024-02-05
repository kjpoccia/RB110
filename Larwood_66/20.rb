=begin
- Initialize a hash variable with default value []
- Iterate through the word, count the occurrences of each char, and add the char to the hash with the count as the key
=end

def sort_hash(hash)
  hash = hash.sort_by { |key, value| key }.reverse.to_h
  hash.each { |key, value| value.sort! }
end


def get_char_count(string)
  return_hash = string.downcase.each_char.with_object({}) do |char, hsh|
    next if hsh.values.flatten.include?(char)
    next unless char.match(/[0-9a-z]/)
    count = string.downcase.count(char)
    if hsh.keys.include?(count)
      hsh[count].push(char)
    else
      hsh[count] = [char]
    end
  end
  return_hash = sort_hash(return_hash)
end

p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
# p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

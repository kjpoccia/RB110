# You are given a string 's' consisting of lowercase letters. A duplicate removal consists of choosing two adjacent and equal letters and removing them.

# We repeatedly make duplicate removals on 's' until we no longer can.

# Write a method that returns a string after all duplicate letters are removed.

def duplicate_index(string)
  string.each_char.with_index do |_, i|
    return i if string[i] == string[i + 1]
  end
  nil
end

def remove_duplicates(string)
  working = string.dup
  while duplicate_index(working)
    i = duplicate_index(working)
    working.slice!(i..i+1)
  end
  working
end


p remove_duplicates(string) == "z"

p remove_duplicates("a") == "a"

p remove_duplicates("abbca") == "aca"

p remove_duplicates("aabbcc") == ""

p remove_duplicates("aderg") == "aderg"

p remove_duplicates("azxxzy") == "ay"

p remove_duplicates("abbaca") == "ca"
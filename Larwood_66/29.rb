=begin
- Split string into groups of 2, if there is an odd count characters in the string, 
add an underscore to the last pair
=end

def solution(string)
  string << "_" if string.length.odd?
  pairs = string.scan(/../)
  pairs
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []

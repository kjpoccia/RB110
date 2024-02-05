=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

Algorithm:
Read in the string, store the length of the substring.
Iterate through each consecutive substring of length letters, check to see if it's equal
to the substring. Increase count by one each time
Return count
=end

def solution(string, str)
  count = 0
  string.chars.each_cons(str.size) { |cons|  count += 1 if str == cons.join }
  count
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1

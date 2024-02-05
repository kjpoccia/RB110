=begin
Given a string, return an array [t, k] where t is the minimum substring that is repeated k times. k should be as large as possible, and t*k should equal 
the input string
- we know that the first letter of the substring will be the first letter of the string

Submethod:
- Return all the substrings of the string that start with the first letter

Main method:
- Initialize a count to 1
- Iterate through the substrings from the submethod and count how many times the substring occurs in the string.
- If the substring times the count equals the string, and the count is greater than the current count, store the count and the substring. 

=end

def subs(string)
  result = []
  string.size.times do |i|
    result << string[0..i]
  end
  result
end

def f(s)
  k = 1
  result = [s, k]
  substrings = subs(s)
  substrings.each do |sub|
    count = s.scan(sub).size
    if sub * count == s && count > k
      k = count
      result = [sub, k]
    end
  end
  result
end

p f("ababab") #== ["ab", 3]
p f("abcde") #== ["abcde", 1]
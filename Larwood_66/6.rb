=begin
Given a string of integers, create all the substrings and count how many are odd

=end

# def solve(string)
#   start = 0
#   counter = 0
#   while start < string.length
#     ending = start
#     while ending < string.length
#       counter += 1 if string[start..ending].to_i.odd?
#       ending += 1
#     end
#     start += 1
#   end
#   counter
# end

def solve(string)
  counter = 0
  string.each_char.with_index do |char, idx|
    counter += (idx + 1) if char.to_i.odd?
  end
  counter
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

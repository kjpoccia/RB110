# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.length == 0
# end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  break if names.size == 0
  puts names.pop
end

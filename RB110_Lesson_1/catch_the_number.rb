# loop do
#   number = rand(100)
#   puts number
#   break if (0..10).include?(number)
# end

loop do
  number = rand(100)
  break if number >= 0 && number <= 10
  puts number
end
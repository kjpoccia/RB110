=begin
Create two arrays - one for the number of spaces, one for the number of stars
For the stars, build an array going from 1 up by 2s to n, then back down to 1
For the spaces, build an array going down from n/2 to 0, then back up to n/2
Then use a loop with a counter to print out each element times a * or a space
=end

def stars(num)
  array = 1.upto(num) + (num-1).downto(1)
  array.select { |i| i.odd? }
end

def spaces(num)
  array = (num/2).downto(0).to_a + 1.upto(num/2).to_a
end

def diamonds(num)
  stars = stars(num)
  spaces = spaces(num)
  1.upto(num) do |row|
    puts " " * spaces[row - 1] + "*" * stars[row - 1]
  end
end

diamonds(5)
diamonds(9)
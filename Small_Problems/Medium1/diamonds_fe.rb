def inner_spaces(num)
  array = 0.upto(num - 2).to_a + (num - 3).downto(0).to_a
  array.select { |i| i.odd? || i == 0 }
end

def outer_spaces(num)
  array = (num/2).downto(0).to_a + 1.upto(num/2).to_a
end

def diamonds(num)
  inner_spaces = inner_spaces(num)
  outer_spaces = outer_spaces(num)
  puts " " * outer_spaces[0] + "*"
  2.upto(num - 1) do |row|
    puts " " * outer_spaces[row - 1] + "*" + " " * inner_spaces[row - 1] + "*"
  end
  puts " " * outer_spaces[0] + "*"
end

diamonds(5)
diamonds(9)
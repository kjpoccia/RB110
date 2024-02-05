def max_number(num)
  num.digits.sort.reverse.join.to_i
end

p max_number(213)
p max_number(7389)
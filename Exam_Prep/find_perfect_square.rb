def find_next_square(sq)
  root = sq**(0.5)
  root.to_i == root ? ((root + 1)**2).to_i : -1
end

p find_next_square(121)
p find_next_square(114)
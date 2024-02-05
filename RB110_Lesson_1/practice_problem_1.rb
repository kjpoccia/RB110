# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flint_hash = {}

# flintstones.each_with_index do |element, index|
#   flint_hash[element] = index
# end

# p flint_hash

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hash = {}

flintstones.each_with_index do |person, idx|
  flint_hash[person] = idx
end

p flint_hash
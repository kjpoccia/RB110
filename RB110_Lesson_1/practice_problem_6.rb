# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! do |name|
#   name[0..2]
# end

# p flintstones

# # learned from this one - don't need to reassign name for each element.
# # just use the fact that the return value will be the new element

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0..2]
end

p flintstones
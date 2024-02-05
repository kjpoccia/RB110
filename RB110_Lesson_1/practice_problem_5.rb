# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# # index = 0

# # flintstones.each_with_index do |name, idx|
# #   if name[0..1] == "Be"
# #     index = idx
# #   end
# # end

# p flintstones.index {|name| name[0..1] == "Be"}

# #learned from this one - index method

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|name| name[0..1] == "Be" }
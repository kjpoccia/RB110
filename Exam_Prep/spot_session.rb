# def letter_count(string)
#   string.each_char.with_object(Hash.new(0)) do |char, result|
#     result[char.to_sym] += 1
#     result
#   end
# end

# p letter_count("arithmetics")

# def solution(str1, str2)
#   length_of_sub = str2.size
#   count = 0
#   str1.each_char.with_index do |_, idx|
#     if str1.slice(idx, length_of_sub) == str2
#       count += 1
#     end
#   end
#   count
# end

# p solution('aa_bb_cc_dd_bb_e', 'bb')
# p solution('aaabbbcccc', 'bbb')

arr1 = ["a", "b", "c"]
arr2 = arr1.dup

arr2.map! do |char|
  char.upcase!
end

puts arr1 
puts arr2


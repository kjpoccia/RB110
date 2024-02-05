# statement = "The Flintstones Rock"

# def frequency(string)
#   array = string.split('')
#   letter_count = array.inject(Hash.new(0)) do |result, element|
#     result[element] += 1
#     result
#   end

#   letter_count.delete_if {|key, value| key == " "}
# end

# p frequency(statement)


statement = "The Flintstones Rock"

letter_hash = Hash.new(0)

letter_array = statement.split('')

letter_array.each do |letter|
  letter_hash[letter] += 1
end

p letter_hash
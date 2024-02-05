=begin
make an array of each number string version (spelled out), use that to create an array of the numbers in words, sort that
aphabetically, and then use the array to map it back to the integers
=end

INTS_TO_WORDS = %w(zero one two three four five six seven eight nine
  ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  sorted_array = array.map do |num|
    INTS_TO_WORDS[num]
  end
 
  sorted_array.sort!
 
  sorted_array.map! do |word|
    INTS_TO_WORDS.find_index(word)
  end
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
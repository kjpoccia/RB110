NUMBERS_IN_ENGLISH = %w(zero one two three four
                        five six seven eight nine
                        ten eleven twelve thirteen fourteen
                        fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
# numbers = numbers.sort_by {|number| NUMBERS_IN_ENGLISH[number]}
# using sort instead:
  numbers = numbers.sort {|a, b| NUMBERS_IN_ENGLISH[a] <=> NUMBERS_IN_ENGLISH[b]}
end

p alphabetic_number_sort((0..19).to_a)

# Why do you think we didn't use Array#sort_by! instead of Enumerable#sort_by?
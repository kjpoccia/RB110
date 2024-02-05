# def multiply_numbers(numbers, factor)
#   multiplied_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     multiplied_numbers << numbers[counter] * factor

#     counter += 1
#   end

#   multiplied_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply_numbers(my_numbers, 3) # => [2, 8, 6, 14, 4, 12]
# p my_numbers

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply_numbers(my_numbers, factor)
  counter = 0
  multiplied_numbers = []

  loop do
    break if counter == my_numbers.size

    multiplied_numbers << my_numbers[counter] * factor

    counter += 1

  end

  multiplied_numbers
end

p multiply_numbers(my_numbers, 3)

p my_numbers
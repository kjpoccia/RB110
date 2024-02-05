=begin
Problem:
- Given an array, compare each pair of consecutive elements and swap them/leave them so that the larger one is on the right
- Repeat this process until each pair of elements requires no swaps

Examples:


Data:
- An arry

Algorithm:
- The method takes an array
- Create a loop with a swap counter, reset it to zero each time at the beginning
- Inner loop:
    - Use an index counter, compare left element with right element using spaceship operator, if 1 is returned, swap them and increase swap counter
    - Increase the index counter regardless of whether the elements are swapped or not
    - break when index == length of array - 1
- Break out of outer loop if swap counter == 0 at the end of the loop

[D, A, B, E]
index = 0
counter = 0
d <=> A = 1
  swap(D, A)
  counter += 1
  index += 1
D <=> B
  swap(D, B)
  counter += 1
  index += 1
D <=> E
  index += 1
  break if index == length - 1

counter is 2
=end

def bubble_sort!(array)
  loop do
    idx = 0
    counter = 0
    loop do
      if (array[idx] <=> array[idx + 1]) == 1
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        counter += 1
      end
      idx += 1
      break if idx == array.length - 1
    end
    break if counter == 0
  end
  array
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)




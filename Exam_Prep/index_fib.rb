=begin
select the element out of the array if its index is a Fibonacci number

Problem:
- Given an array
- Select those elements whose indices are Fibonacci numbers (0, 1, 1, 2, 3, 5, 8, 13, 21...)

Examples:
p fib_indices([0, 1, 2, 3, 4, 5]) #=> [0, 1, 2, 3, 5]
p fib_indices(["a", "b", "c", "d", "e", "f"]) #=> ["b", "c", "d", "f"]

Algorithm:
Helper method:
  Input will be the number of elements in the input array, return the fibonacci sequence up to that number in array form
  Fibonacci(5) = [1, 1, 2, 3]
    arr[2] = arr[1] + arr[0]
    arr[0] = 0
    arr[1] = 1
    arr[i] = arr[i - 1] + arr[i - 2]
    We get 21. Index = 0, element = 0.
    initialize return array
      While element < input
        case
          when index == 0
            arr[index] = 0
          when index == 1
            arr[index] = 1
          else
            arr[index] = arr[index - 1] + arr[index - 2]
        end
      return arr

Main method:
  Iterate through the array with index, if the index appears in the fibonacci array, add it to the return array

Question:
- Should the element at index 1 be in the return array twice?
=end

def fib_array(num)
  idx = 0
  fibs = []
  loop do 
    case
    when idx == 0
      fibs[idx] = 0
    when idx == 1
      fibs[idx] = 1
    else
      break if (fibs[idx - 1] + fibs[idx - 2]) > num
      fibs[idx] = fibs[idx - 1] + fibs[idx - 2]
    end
    idx += 1
  end
  fibs
end

def fib_indices(array)
  result = []
  array.each_with_index do |element, idx|
    result << element if fib_array(array.length).include?(idx)
  end
  result
end

p fib_indices([0, 1, 2, 3, 4, 5]) #=> [0, 1, 2, 3, 5]
p fib_indices(["a", "b", "c", "d", "e", "f"]) #=> ["a", "b", "c", "d", "f"]





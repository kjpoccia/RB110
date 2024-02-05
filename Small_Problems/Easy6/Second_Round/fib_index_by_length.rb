=begin
write a method to build the fibonacci sequence, and it stops when the number reaches the number of digits provided. It returns the index
Another method will take a number of digits, call the fibonacci sequence method, and then use the output of that to add one, return that number.
Maybe we don't need that other method.

Fibonacci sequence is put together recursively. The method should, for n, return 0 for n = 0, return 1 for n = 1, return fib(n-1) + fib(n-2) for n > 1
=end

# def fibonacci(index)
#   if index == 0
#     return 0
#   elsif index == 1
#     return 1
#   else
#     fibonacci(index - 1) + fibonacci(index - 2)
#   end
# end

# def find_fibonacci_index_by_length(size)
#   counter = 0
#   loop do
#     break if fibonacci(counter).digits.length == size
#     counter += 1
#   end
#   counter
# end

=begin
Ran out of stack space I guess. Trying again...
=end

def find_fibonacci_index_by_length(length)
  a = 1
  b = 1
  index = 2

  loop do
    fibonacci = a + b
    break if fibonacci.to_s.size == length

    index += 1
    a = b
    b = fibonacci
  end
  index + 1
end


p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
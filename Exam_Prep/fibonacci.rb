=begin
Problem:
- Given a number n, calculate the nth number in the Fibonacci sequence

Examples:
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

Data Structures:
-Array


Algorithm:
- Define a method that takes one parameter, an integer n
- Within the method, 1 is returned if n = 1, or if n = 2
- Otherwise, return method return for n - 1 + method return for n - 2

fibonacci(1) = [1]
fibonacci(4) = [1, 1, 2, 3]
fibonacci(5) = [1, 1, 2, 3, 5]
=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
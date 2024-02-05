def fib_num_length(num)
  counter = 3
  fib_nums = [1, 1, 2]
  until fib_nums[-1].to_s.length >= num do
    fib_nums[counter] = fib_nums[-1] + fib_nums[-2]
    counter += 1
  end
  counter
end

p fib_num_length(2)
p fib_num_length(3)
p fib_num_length(10)
p fib_num_length(100)
p fib_num_length(1000)
p fib_num_length(10000)

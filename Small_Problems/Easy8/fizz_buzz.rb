=begin
Define a method to take the the two arguments and use upto to iterate through, and then with each element print either fizz, buzz, or fizzbuzz
=end

def fizzbuzz(start, finish)
  result = ""
  start.upto(finish) do |num|
    if num % 3 == 0
      if num % 5 == 0
        result << "FizzBuzz, "
      else
        result << "Fizz, "
      end
    elsif num % 5 == 0
      result << "Buzz, "
    else
      result << "#{num}, "
    end
  end
  puts result
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

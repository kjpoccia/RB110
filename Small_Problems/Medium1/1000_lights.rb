=begin
The method takes n, an integer
Create a nested loop
The outer loop will have a counter that is the multiple 1, 2, 3, etc. all the way up to n and stop when the counter > n
The inner loop will check to see if the array contains the multiples of the counter. If it does, remove the multiples. If it doesn't, add them.
Maybe a helper method to create an array containing the multiples
=end

def multiples(mult, num)
  array = []
  1.upto(num) { |i| array << i if (i % mult).zero? }
  array
end

def lights(num)
  lights_on = multiples(1, num)
  2.upto(num) do |multiple|
    multiples(multiple, num).each do |i|
      if lights_on.include?(i)
        lights_on.delete(i)
      else
        lights_on << i
      end
    end
  end
  lights_on
end

p lights(5)
p lights(1000)

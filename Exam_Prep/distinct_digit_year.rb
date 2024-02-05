=begin
helper method: 
  turn the year into an array, check to see how many times each element appears in the array.
  If any element appears more than one time, return false
=end
def distinct(year)
  arr = year.digits
  arr.each do |num|
    return false if arr.count(num) > 1
  end
  true
end

def distinct_digit_year(year)
  loop do
    year += 1
    break if distinct(year)
  end
  year
end

p distinct_digit_year(1987)
p distinct_digit_year(2013)
p distinct_digit_year(2229)

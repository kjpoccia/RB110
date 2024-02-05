=begin
In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
unless the year is also divisible by 100. 
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Algorithm:
  If a year is divisible by 400, it's a leap year
  else if a year is divisible by 100, it's not a leap year
    else if a year is divisble by 4, it's a leap year
=end

def leap_year?(year)
  if year % 400 == 0
    false
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

Algorithm:
  Get the prefix by first subtracting one if the number is divisible by 100 - this adjusts for the '01 issue.
  Then divide by 100, round up to nearest integer
  For the suffix, only need to deal with 1, 2, and 3 endings, and the teens. Use if statements
=end

# def century(year)
#   cent = ''
#   if year.modulo(100) == 0
#     cent = ((year - 1) / 100.0).ceil.to_s
#   else
#     cent = (year/100.0).ceil.to_s
#   end

#   if cent[-2] == "1"
#     cent << "th"
#   else
#     if cent[-1] == "1"
#       cent << "st"
#     elsif cent[-1] == "2"
#       cent << "nd"
#     elsif cent[-1] == "3"
#       cent << "rd"
#     else
#       cent << "th"
#     end
#   end
# end

def century(year)
  superscripts = {0 => "th", 1 => "st", 2 => "nd", 3 => "rd", 4 => "th", 5 => "th", 6 => "th",
  7 => "th", 8 => "th", 9 => "th"}

  century_result = (year.to_f / 100).ceil
  if century_result.digits[1] == 1
    superscript = "th"
  else
    superscript = superscripts[century_result.digits.shift]
  end

  century_result.to_s + superscript
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
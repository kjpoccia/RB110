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

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  digits_no_sign = string_to_integer(string[1..-1])

  case string[0]
  when '-' then -digits_no_sign
  when '+' then digits_no_sign
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321')
p string_to_signed_integer('-571')
p string_to_signed_integer('+100')
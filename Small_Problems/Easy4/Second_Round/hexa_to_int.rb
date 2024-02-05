HEX_TO_INT = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, +
                "A" => 10, "B" => 11, "C" => 12, "D" => 13, "E" => 14, "F" => 15}

def hexadecimal_to_integer(string)
  string_array = string.upcase.split('').reverse
  sum = 0
  string_array.each_with_index do |str, index|
    sum += (HEX_TO_INT[str]*(16**index))
  end
  sum
end



p hexadecimal_to_integer('4D9f') == 19871

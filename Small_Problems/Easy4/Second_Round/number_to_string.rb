STRING_TO_I = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def integer_to_string(integer)
  int_array = integer.digits.reverse
  string_array = int_array.inject([]) do |array, num|
    array << STRING_TO_I.key(num)
  end

  string_array.join('')
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
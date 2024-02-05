STRING_TO_I = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_to_integer(string_array)
  sum = 0
  string_array.each_with_index do |str, index|
    sum += (STRING_TO_I[str]*(10**index))
  end
  sum
end

def string_to_signed_int(string)
  string_array = string.split('').reverse
  if string[0] == "+"
    string_array.pop
    string_to_integer(string_array)
  elsif string[0] == "-"
    string_array.pop
    -1 * string_to_integer(string_array)
  else
    string_to_integer(string_array)
  end
end



p string_to_signed_int('4321') == 4321
p string_to_signed_int('-570') == -570
p string_to_signed_int('+100') == 100
STRING_TO_I = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}

def string_to_integer(string)
  string_array = string.split('').reverse
  sum = 0
  string_array.each_with_index do |str, index|
    sum += (STRING_TO_I[str]*(10**index))
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
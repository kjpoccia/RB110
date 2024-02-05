def string_to_integer(string)
  integers = 0
  string.each_char do |x|
    (0..9).each do |n|
      if x == n.to_s
          integers = integers * 10 + n
      end
    end
  end

  if string.split('').shift == "-"
    integers = -integers
  end

integers
end

p string_to_integer('4321')
p string_to_integer('-571')
p string_to_integer('+100')

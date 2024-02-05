def remove_vowels(array)
  array.map do |x|
    x.delete("aeiouAEIOU")
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
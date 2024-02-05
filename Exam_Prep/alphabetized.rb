ALPHABET = ("A".."Z").to_a + ("a".."z").to_a

def alphabetized(s)
  arr = []
  s.each_char do |char|
    arr << char if ALPHABET.include?(char)
  end
  arr.sort_by { |x| x.downcase }.join
end

p alphabetized("")
p alphabetized(" ")
p alphabetized(" a")
p alphabetized("The Holy Bible")
UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  string.chars.map do |x|
    UPPERCASE.include?(x) ? x.downcase! : x.upcase!
  end.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')
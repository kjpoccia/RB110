=begin
- Turn both strings into arrays of characters and iterate through str2 and make
sure the count of each letter is less than or equal to the count of that letter
in str1
=end

def scramble(str1, str2)
  str2.chars.all? do |char|
    str2.count(char) <= str1.count(char)
  end
end

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
p scramble('a', 'aa') == false

=begin
- Create a hash where the keys are the letters and the values are the lettercount. 
- Put the input and the argument through that method, return true if the hashes are the same
=end

def letter_count_hash(string)
  return_hash = Hash.new(0)
  string.chars.each do |char|
    return_hash[char] += 1
  end
  return_hash
end

def is_anagram(str1, str2)
  letter_count_hash(str1.downcase) == letter_count_hash(str2.downcase)
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false
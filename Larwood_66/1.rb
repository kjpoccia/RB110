=begin
Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 
'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' 
instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Problem:
Given a string, return a hash with the letters as symbols as the keys and their counts as the values

Algorithm:
alphabetize the string
Iterate through the string, add each lowercase letter to the result hash as a symbol, 
increase count by one each time
Return the hash

=end

def letter_count(string)
  string.chars.sort.each.with_object(Hash.new(0)) do |char, obj|
    obj[char.to_sym] += 1
  end
end


p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

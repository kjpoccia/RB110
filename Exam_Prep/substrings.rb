=begin
Problem:
Given a string, find the minumum substring t such that the number of times it occurs in s is maximized

Examples:
repeater("abcde") == ["abcde", 1]
repeater("ababab") == ["ab", 3]

Data:
Array

Algorithm:
- 
=end

def f(str)
 (1..str.size).each do |substring_size|
    substring = str[0, substring_size]
    repetitions = str.size / substring_size

    return [substring, repetitions] if substring * repetitions == str
  end
end

p f("aabaab")
p f("abcde")
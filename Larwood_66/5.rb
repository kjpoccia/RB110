=begin
Iterate through the word, increase counter by 1 each time it encounters a vowel, add counter
to result array and set counter to 0 each time it encounters a consonant. Return the biggest
number in the array

=end

def solve(string)
  counter = 0
  result = []
  string.each_char do |letter|
    if letter =~ /[aeiou]/
      counter += 1
    else
      result << counter
      counter = 0
    end
  end
  result << counter
  result.max
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

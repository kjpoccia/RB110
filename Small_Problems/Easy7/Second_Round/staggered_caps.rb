=begin
Initialize a boolean variable that starts as true and then do each_char, within each iteration flip the boolean to the opposite, and when 
the character is a letter and the boolean is true, uppercase it. When the character is a letter and the boolean is false, lowercase it.
=end

ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  uppercase_it = true

  result = ''
  string.each_char do |char|
    if ALPHABET.include?(char)
      if uppercase_it
        result << char.upcase
      else
        result << char.downcase
      end
      uppercase_it = !uppercase_it
    else 
      result << char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
LETTERS = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  counter = 1
  string.chars.map do |x|
    if LETTERS.include?(x)
      counter += 1
      counter.odd? ? x.upcase : x.downcase
    else
      x
    end
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')
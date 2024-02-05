def staggered_case(string)
  string.chars.map.with_index do |x, i|
    if i % 2 == 1
      x.downcase
    else
      x.upcase
    end
  end.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')
def divisors(n)
  divs = (2..n-1).to_a.select { |num| n.to_f/num == n/num }
  divs.empty? ? "#{n} is prime" : divs
end

p divisors(15)
p divisors(7)
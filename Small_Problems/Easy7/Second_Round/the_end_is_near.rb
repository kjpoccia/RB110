=begin
Use split to create an array of the words, return array[-2]
=end

def penultimate(string)
  string.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
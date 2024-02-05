=begin
Given a camel cased string, return kebab case

- Remove numbers
- Iterate through the string. When an uppercased letter is encountered, replace it with a hyphen and a lowercase letter
=end

def kebabize(string)
  no_nums = string.split('').select { |char| char.match(/[a-zA-Z]/) }
  no_nums.map.with_index do |char, idx|
    if char.downcase == char || idx == 0
      char
    else
      "-#{char}"
    end
  end.join.downcase
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('MyCamelHas3Humps') == 'my-camel-has-humps'

answers = [ 'a', 42, 'c', 'd', 'c', 'b']
truths = ['Your hard work will pay off', 'The sky is blue', 'You are worth it']
lyrics = ['Never', 'Gonnna', 'Give', 'You', 'Up', true]
lastly = ['foo', 'bar', 'baz', []]

def my_method(input)
  input.any? { |item| !item.is_a?(String) }
end

p my_method(answers) == true  #=> true
p my_method(truths) == false    #=> true
p my_method(lyrics) == true   #=> true
p my_method(lastly) == true   #=> true
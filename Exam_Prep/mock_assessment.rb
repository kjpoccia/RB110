# ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# p ({ a: 'ant', b: 'bear' }.map do |key, value|
#   if value.size > 3
#     value
#   end
# end)

# def test(b)
#   b.map! {|letter| "I like the letter: #{letter}"}
# end

# a = ['a', 'b', 'c']
# test(a)
# p a

# p (['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
#   hash[value[0]] = value
# end)

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# new_array = arr.select do |n| 
#   n + 1
#   puts n
# end
# p new_array

# p ({ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
#   value.size > 4
# end)

# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n|
#   n if n.even?
# end

# p even_numbers

# balance = 0

# # Here's what you earned and spent during the first three months.

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# # Let's see how much you've got now...

# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum
  
#   plus - minus
# end

# [january, february, march].each do |month|
#   balance += calculate_balance(month)
# end

# puts balance

# player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# # Then the player picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase.to_sym

# player.merge(character_classes[input])

# puts 'Your character stats:'
# puts player

# p ({ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
#   p pair
#   array << pair.last
# end)

# a = 7
# array = [1, 2, 3]

# array.each do |_|
#   a += 1
# end

# puts a
# puts array

# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog] << 'bowser'

# p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

# def count_sheep
#   5.times do |sheep|
#     puts sheep
#     if sheep >= 2
#       return
#     end
#   end
# end

# p count_sheep

# a = 4
# b = 2

# 2.times do |a|
#   a = 5
#   puts a
# end

# puts a
# puts b
=begin
def predict_weather
  sunshine = [true, false].sample
  
  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather


def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
 
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= things.length
  
  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end
  
  i += 1
  
end

arr = [1, 2, 3, 4]

counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"

def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
=end
# def fix(value)
#   value.upcase!
#   value.concat('!')
#   value
# end

# s = 'hello'
# t = fix(s)

# p s
# p t
# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a
a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
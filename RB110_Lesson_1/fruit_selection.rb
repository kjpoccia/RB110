# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# produce_2 = {}

# def select_fruit(produce)
#   fruit = {}
#   items = produce.keys
#   counter = 0

#   loop do
#     break if counter == items.size
#     current_item = items[counter]

#     if produce[current_item] == "Fruit"
#       fruit[current_item] = "Fruit"
#     end

#     counter += 1
    
#   end

#   fruit
# end

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
# p select_fruit(produce_2)

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce)
  produce_keys = produce.keys
  counter = 0
  fruits = {}

  loop do
    break if counter == produce_keys.size

    current_item = produce_keys[counter]

    if produce[current_item] == "Fruit"
      fruits[current_item] = "Fruit"
    end
    counter += 1
    
  end

  fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
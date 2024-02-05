say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  if counter == 6
    say_hello = false
  end
end
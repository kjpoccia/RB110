def count_occurrences(array)
  counter_hash = Hash.new(0)

  array.each do |x|
    counter_hash[x.downcase] += 1
  end

  counter_hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)
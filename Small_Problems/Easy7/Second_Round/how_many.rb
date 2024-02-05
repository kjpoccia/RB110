=begin
Use inject to start with a hash and add to it when it encounters the key
=end

def count_occurrences(array)
  array.inject(Hash.new(0)) do |memo, obj|
    memo[obj] += 1
    memo
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)
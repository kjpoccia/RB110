arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

def hash_me(array)
  hsh = {}

  array.each do |sub|
    hsh[sub[0]] = sub[1]
  end

  hsh
end

p hash_me(arr)


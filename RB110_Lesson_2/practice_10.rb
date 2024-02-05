arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr2 = arr.map do |hsh|
  hsh2 = {}
  hsh.map do |letter, num|
    hsh2[letter] = num + 1
  end
  hsh2
end

p arr2
p arr
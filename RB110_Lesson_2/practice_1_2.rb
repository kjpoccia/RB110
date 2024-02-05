arr = ['10', '11', '9', '7', '8']

arr.map! do |num|
  num.to_i
end

arr.sort! do |a, b|
  b <=> a
end

arr.map! do |num|
  num.to_s
end

p arr

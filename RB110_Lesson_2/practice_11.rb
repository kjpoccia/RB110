arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

def select_threes(array)
  array.map do |sub|
    sub.select do |num|
      num % 3 == 0
    end
  end
end

p select_threes(arr)
p arr


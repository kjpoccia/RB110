def min_sum(arr)
  sorted = arr.sort
  (1..arr.size/2).each_with_object([]) do |index, array|
    array << (sorted[index - 1] * sorted[-index])
  end.sum
end

p min_sum([5,4,2,3])
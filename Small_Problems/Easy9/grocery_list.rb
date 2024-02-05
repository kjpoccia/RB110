=begin
Use each and times
=end

def buy_fruit(array)
  result = []
  array.each do |item|
    item[1].times do
      result << item[0]
    end
  end
  result
end




p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
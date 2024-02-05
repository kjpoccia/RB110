# return new array with subarrays sorted in descending order

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_array = arr.map do |array|
              array.sort.reverse
            end

p new_array
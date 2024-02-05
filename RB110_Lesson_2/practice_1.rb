arr = ['10', '11', '9', '7', '8']

sorted = arr.sort_by do |str|
          str.to_i
        end.reverse

p sorted
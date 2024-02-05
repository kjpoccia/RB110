=begin
Use split to turn it into an array, then take the second element, then a comma, then the first element and return those in a string
=end

def swap_name(name)
  array_name = name.split
  "#{array_name[1]}, #{array_name[0]}"
end



p swap_name('Joe Roberts') == 'Roberts, Joe'
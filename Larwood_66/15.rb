=begin
- Return false if size is not 10
- Create a latitude variable and a longitude variable
- Iterate through the walk array and add to the latitude if 'n' is encountered, subtract if 's' is encountered
- Same with longitude and 'w' 'e'
- Return false if not n, s, w, or e
- Return false if latitde or longitude don't equal 0
=end

def is_valid_walk(walk)
  return false if walk.size != 10
  latitude = 0
  longitude = 0

  walk.each do |dir|
    case dir
    when 'n' then latitude += 1
    when 's' then latitude -= 1
    when 'e' then longitude += 1
    when 'w' then longitude -= 1
    else
      return false
    end
  end

  latitude == 0 && longitude == 0
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

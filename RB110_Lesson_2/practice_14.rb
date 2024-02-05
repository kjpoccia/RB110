hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

def upcase_array(array)
  arr_caps = []
  array.each do |item|
    arr_caps << item.capitalize
  end
  arr_caps
end

array = []

hsh.each do |item, details|
  if details[:type] == 'fruit'
    array << upcase_array(details[:colors])
  else
    array << details[:size].upcase
  end
end

p array
p hsh
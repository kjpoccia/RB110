hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u A E I O U)

hsh.each_value do |array|
  array.each do |word|
    word.each_char {|c| p c if vowels.include?(c)}
  end
end

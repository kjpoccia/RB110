hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u)

hsh.each do |_, value|
  value.each do |word|
    arr = word.split('')
    arr.each do |char|
      p char if vowels.include?(char)
    end
  end
end
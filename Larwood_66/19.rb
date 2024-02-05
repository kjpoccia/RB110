=begin
- Store the optional words in an array, all lowercase
- Iterate through the words in the title
- If the word is the first word or not in the exceptions, capitalize it
=end

def title_case(title, exceptions = '')
  exceptions = exceptions.downcase.split
  title.split.map.with_index do |word, idx|
    if !exceptions.include?(word.downcase) || idx == 0
      word.capitalize
    else
      word.downcase
    end
  end.join(' ')
end


p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

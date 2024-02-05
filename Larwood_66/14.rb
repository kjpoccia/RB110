=begin
- Split up the string into an array of words based on the appearance of WUB
- Remove WUB
- Join with spaces

=end

def song_decoder(string)
  arr = string.split(/WUB/)
  arr.delete('')
  arr.join(' ')
end

p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"

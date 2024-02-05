def clean_up(string)
  clean = string.chars.inject("") do |result, char|
            char.gsub!(char, " ") if char.ord < 97 || char.ord > 122
            result << char
            result
          end
  clean.squeeze!(" ")
end

puts clean_up("---what's my +*& line?")

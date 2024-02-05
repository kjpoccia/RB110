# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   if (0..17).include?(details["age"])
#     munsters[name]["age_group"] = "kid"
#   elsif (18..64).include?(details["age"])
#     munsters[name]["age_group"] = "adult"
#   else
#     munsters[name]["age_group"] = "senior"
#   end
# end

# p munsters


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# need to iterate through each person, access the value, within that value add an additional key "age group" and 
# assign it based on where they fall

munsters.each do |name, qualities|
  if qualities["age"] > 64
    qualities["age_group"] = "senior"
  elsif qualities["age"].between?(18,65)
    qualities["age_group"] = "adult"
  else
    qualities["age_group"] = "kid"
  end
end

p munsters
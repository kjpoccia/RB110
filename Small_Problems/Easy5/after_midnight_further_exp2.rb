DATE = Time.new(2023, 2, 19)

def date_and_time(minutes)
  time = DATE + minutes * 60
  time.strftime('%A %H:%M')
end

puts date_and_time(-4231)
puts date_and_time(0)
puts date_and_time(3000)
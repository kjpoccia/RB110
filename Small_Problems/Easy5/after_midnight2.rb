MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  hours, minutes = time.split(':')
  (hours.to_i * MINUTES_PER_HOUR + minutes.to_i) % MINUTES_PER_DAY
end

def before_midnight(time)
  hours, minutes = time.split(':')
  result = MINUTES_PER_DAY - (hours.to_i * MINUTES_PER_HOUR + minutes.to_i)
  result = 0 if result == MINUTES_PER_DAY
  result
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
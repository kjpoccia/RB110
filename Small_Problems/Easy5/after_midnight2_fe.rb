require 'time'
TODAY = Time.strptime('00:00', '%H:%M')
TOMORROW = Time.strptime('24:00', '%H:%M')
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60

def after_midnight(time)
  new_time = Time.strptime(time, '%H:%M')
  minutes = (new_time.to_i - TODAY.to_i) / SECONDS_PER_MINUTE
  minutes % MINUTES_PER_DAY
end

def before_midnight(time)
  new_time = Time.strptime(time, '%H:%M')
  minutes = (TOMORROW.to_i - new_time.to_i) / SECONDS_PER_MINUTE
  minutes % MINUTES_PER_DAY
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60

def dms(num)
  degrees = num.floor
  if num == degrees
    minutes = 0
    seconds = 0
  else
    minutes_float = MINUTES_PER_DEGREE * (num - degrees)
    minutes = minutes_float.floor
    seconds_float = SECONDS_PER_MINUTE * (minutes_float - minutes)
    seconds = seconds_float.floor
  end
format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=begin
set the degrees = angle.to_i, then the minutes are (angle - degrees)*60.to_i, then the seconds are minutes - minutes.to_i * 60
=end

def dms(angle)
  degrees = angle.to_i
  minutes = (angle - degrees) * 60
  seconds = (minutes - minutes.to_i) * 60
  #"%(" + format("%01d", degrees) + "°" + format("%02d", minutes.to_i) + "'" + format("%02d", seconds) + "\")"
  "%%(%01d°%02d'%02d\")" % [degrees, minutes.to_i, seconds]
end

p dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
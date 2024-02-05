=begin
There are 1440 minutes in a day. First mod 1440 to get remainder. Then divide by 60 to get hours. Then mod 60 to get minutes. 
Then if negative, subtract hours from 24, subtract minutes from 60
If positive, the hours and minutes are the answer
=end

def time_of_day(minutes)
  remove_days = minutes.modulo(1440)
  hours = remove_days / 60
  remaining_mins = remove_days.modulo(60)

  "%02d:%02d" % [hours, remaining_mins]
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
=begin
first need to convert the hours to int and the minutes to int. Then take hours and multiply by 60, add to minutes.
=end

def after_midnight(string)
  string[0..1].to_i.modulo(24) * 60 + string[3..4].to_i
end

def before_midnight(string)
  (1440 - after_midnight(string)).modulo(1440)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
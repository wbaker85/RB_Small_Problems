def after_midnight(time_str)
  return 0 if time_str == '00:00' || time_str == '24:00'
  hours, minutes = time_str.split(':')
  hours.to_i * 60 + minutes.to_i
end

def before_midnight(time_str)
  return 0 if time_str == '00:00' || time_str == '24:00'
  1440 - after_midnight(time_str)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
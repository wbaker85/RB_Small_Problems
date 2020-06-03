MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY

def time_of_day(mins)
  minutes_passed = mins % MINUTES_IN_DAY
  hours, minutes = minutes_passed.divmod(MINUTES_IN_HOUR)
  "#{format('%02.0f', hours)}:#{format('%02.0f', minutes)}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
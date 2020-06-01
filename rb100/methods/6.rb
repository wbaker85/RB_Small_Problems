def time_of_day(night)
  puts "#{night ? 'night' : 'day'}"
end


daylight = [true, false].sample

time_of_day(daylight)
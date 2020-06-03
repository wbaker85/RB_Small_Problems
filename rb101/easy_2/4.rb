print 'Enter age '
age = gets.chomp.to_i

print 'Enter retirement age '
ret_age = gets.chomp.to_i

current_year = Time.now.year

puts "It's #{current_year}.  You will retire in #{ret_age - age + current_year}."
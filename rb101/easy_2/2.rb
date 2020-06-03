puts "Enter length"
length = gets.chomp
puts "Enter width"
width = gets.chomp

meters = length.to_f * width.to_f
feet = meters * 2.3

puts "Room area: #{format('%02.2f', meters)} sq meters (#{format('%02.2f', feet)} sq feet)"
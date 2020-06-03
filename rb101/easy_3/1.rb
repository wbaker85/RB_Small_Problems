list = []

1.upto(5) do |nth|
  puts "Enter the #{nth} number:"
  list << gets.chomp.to_i
end

puts 'Enter the last number:'
last = gets.chomp.to_i

puts "The number #{last} #{list.include?(last) ? 'appears' : 'does not appear'} in #{list}."
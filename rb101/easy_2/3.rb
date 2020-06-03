puts 'Enter bill'
bill = gets.chomp.to_f

puts 'Enter percent'
perc = gets.chomp.to_f

tip = bill * perc / 100
total = bill + tip

puts "Tip: #{format('%02.2f', bill.round(2))}, Total: #{format('%02.2f', total.round(2))}"
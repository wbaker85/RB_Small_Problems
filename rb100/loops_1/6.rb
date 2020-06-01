numbers = []

while numbers.length < 5
  numbers << [*0..99].sample
end

puts numbers

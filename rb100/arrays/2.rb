pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets.filter { |pet| pet == 'fish' || pet == 'lizard' }

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
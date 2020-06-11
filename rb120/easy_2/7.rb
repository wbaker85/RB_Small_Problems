class Shelter
  def initialize
    @owners = []
    @unadopted_pets = []
  end

  def unadopted_number
    @unadopted_pets.size
  end

  def add_pet(pet)
    @unadopted_pets << pet
  end

  def adopt(owner, pet)
    if !@owners.include?(owner)
      @owners.push(owner)
    end

    @unadopted_pets.delete(pet)
    owner.adopt(pet)
  end

  def print_unadopted
    puts "The Animal Shelter has the following unadopted pets:"
    @unadopted_pets.each do |pet|
      puts "a #{pet.type} named #{pet.name}"
    end
  end

  def print_adoptions
    @owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
    end
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Owner
  attr_reader :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def pets
    @pets.clone
  end

  def adopt(pet)
    @pets.push(pet)
  end

  def number_of_pets
    pets.length
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new

pets = [
  Pet.new('dog', 'Asta'), Pet.new('dog', 'Laddie'),
  Pet.new('cat', 'Fluffy'), Pet.new('cat', 'Kat'), Pet.new('cat', 'Ben'),
  Pet.new('parakeet', 'Chatterbox'), Pet.new('parakeet', 'Bluebell'),
]

pets.each do |pet|
  shelter.add_pet(pet)
end 

shelter.print_unadopted

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The animal shelter has #{shelter.unadopted_number} unadopted pets."

shelter.adopt(bholmes, pets[1])

shelter.print_unadopted
puts "The animal shelter has #{shelter.unadopted_number} unadopted pets."


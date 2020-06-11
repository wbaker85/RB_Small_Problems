class Cat
  attr_reader :name

  def self.generic_greeting
    puts "Generic greeting"
  end

  def personal_greeting
    puts "Greeting from #{name}"
  end

  def initialize(name)
    @name = name
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting
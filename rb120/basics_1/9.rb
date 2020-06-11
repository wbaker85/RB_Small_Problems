class Cat
  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def initialize(name)
    self.name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

kitty.name = 'Luna'
kitty.greet
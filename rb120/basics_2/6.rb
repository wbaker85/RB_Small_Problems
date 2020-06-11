class Cat
  COLOR = 'purple'

  def initialize(name)
    @name = name
  end

  def greet
    puts "#{@name} is a #{COLOR} cat."
  end
end


kitty = Cat.new('Sophie')
kitty.greet
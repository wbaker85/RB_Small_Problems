class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

=begin
  Cat class
  Animal class
  Object
  Kernel
  BasicObject
=end

puts cat1.class.ancestors
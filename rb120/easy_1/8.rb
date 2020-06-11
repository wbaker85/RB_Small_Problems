class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(dim)
    super(dim, dim)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"
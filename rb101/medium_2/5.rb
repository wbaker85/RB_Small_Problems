def triangle(*sides)
  sides.sort!
  return :invalid if sides.any? { |side| side <= 0 } ||
                     sides[0] + sides[1] <= sides [2]

  unique_sides = sides.uniq.length

  case unique_sides
  when 3 then :scalene
  when 2 then :isosceles
  when 1 then :equilateral
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

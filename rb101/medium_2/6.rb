def triangle(*sides)
  return :invalid if sides.sum != 180 || sides.any? { |side| side <= 0 }

  if sides.all? { |side| side < 90 }
    :acute
  elsif sides.any? { |side| side > 90 }
    :obtuse
  else
    :right
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

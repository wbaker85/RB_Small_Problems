def stringy(int, val = 1)
  [*0..int - 1].map { |idx| idx.even? ? val : (val - 1).abs }.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(9, 1)
puts stringy(9, 0)
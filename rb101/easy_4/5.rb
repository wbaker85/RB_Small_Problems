def multisum(int)
  (1..int).filter { |num| num % 3 == 0 || num %5 == 0 }.reduce(&:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
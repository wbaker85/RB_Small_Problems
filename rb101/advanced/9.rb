require 'rational'

def egyptian(rat_num)
  denom = 1

  output = []
  current_sum = nil

  loop do
    current_sum = output.reduce(Rational(0)) { |sum, num| sum + Rational(1, num) }
    if rat_num - current_sum - Rational(1, denom) >= 0
      output.push(denom)
    elsif current_sum == rat_num
      break
    end
    denom += 1
  end

  output
end

def unegyptian(denom_arr)
  denom_arr.map { |denom| Rational(1, denom) }.reduce(&:+)
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
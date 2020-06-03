def integer_to_string(int)
  str = ''

  loop do
    int, digit = int.divmod(10)
    str = (digit + 48).chr + str
    break if int == 0
  end

  str
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
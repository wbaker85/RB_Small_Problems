def integer_to_string(int)
  str = ''

  loop do
    int, digit = int.divmod(10)
    str = (digit + 48).chr + str
    break if int == 0
  end

  str
end

def signed_integer_to_string(int)
  return '0' if int == 0
  int > 0 ? '+' + integer_to_string(int) : '-' + integer_to_string(int.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
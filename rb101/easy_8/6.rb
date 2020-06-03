def fizzbuzz(start_num, end_num)
  (start_num..end_num).map do |val|
    if val % 3 == 0 && val % 5 == 0
      'FizzBuzz'
    elsif val % 3 == 0
      'Fizz'
    elsif val % 5 == 0
      'Buzz'
    else
      val
    end
  end
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
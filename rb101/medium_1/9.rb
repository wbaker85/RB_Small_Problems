def fibonacci(nth)
  last_fib, this_fib = 0, 1

  1.upto(nth - 1) do
    last_fib, this_fib = this_fib, last_fib + this_fib
  end

  this_fib
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
def fibonacci(nth)
  last_fib, this_fib = 0, 1

  1.upto(nth - 1) do
    last_fib, this_fib = this_fib, last_fib + this_fib
  end

  this_fib
end

def fibonacci_last(nth)
  digs = []
  1.upto(70) do |num|
    fib = fibonacci(num)
    digs << fib.to_s[-1]
  end
  
  str_digs = digs.join
  end_idx = str_digs[1..-1].index(str_digs[0..5])
  
  str_digs[(nth - 1) % (end_idx + 1)].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123456789987745) # -> 5
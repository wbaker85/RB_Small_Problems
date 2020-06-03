# 1 1 2 3 5 8 13 ...

def find_fibonacci_index_by_length(int)
  idx = 1
  last_fib, this_fib = [0, 1]

  while this_fib.to_s.length < int
    last_fib, this_fib = [this_fib, last_fib + this_fib]
    idx += 1
  end

  idx
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
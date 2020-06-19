def step(starting, ending, step_val)
  current = starting
  output = []

  while current < ending
    output << current
    yield(current)
    current += step_val
  end

  output
end

p step(1, 10, 3) { |value| puts "value = #{value}" }
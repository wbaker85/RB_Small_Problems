def sequence(num_elements, inc_by)
  output = []

  num_elements.times do |iter|
    output << inc_by * (iter + 1)
  end

  output
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
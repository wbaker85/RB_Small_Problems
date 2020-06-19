def missing(arr)
  output = []

  (arr.first..arr.last).each do |num|
    output.push(num) if !arr.include?(num)
  end

  output
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

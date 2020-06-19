def zip(arr1, arr2)
  output = []

  0.upto(arr1.size - 1) do |n|
    output << [arr1[n], arr2[n]]
  end

  output
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
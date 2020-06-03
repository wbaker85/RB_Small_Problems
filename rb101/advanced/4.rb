def transpose(matrix_arr)
  orig_rows = matrix_arr.length
  orig_cols = matrix_arr[0].length

  rotated = Array.new(orig_cols).map { |_| [] }

  0.upto(orig_rows - 1) do |orig_row|
    0.upto(orig_cols - 1) do |orig_col|
      rotated[orig_col][orig_row] = matrix_arr[orig_row][orig_col]
    end
  end

  rotated
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
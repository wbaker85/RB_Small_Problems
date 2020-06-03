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

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [
  [1, 4, 3], 
  [5, 7, 9], 
  [8, 2, 6]
]

p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
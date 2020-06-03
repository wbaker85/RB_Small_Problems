def bubble_sort!(arr)
  loop do
    swapped = false
    1.upto(arr.length - 1) do |idx|
      if arr[idx] < arr[idx - 1]
        arr[idx], arr[idx - 1] = arr[idx - 1], arr[idx]
        swapped = true
      end
    end

    break if swapped == false
  end
end

array = [5, 3]
bubble_sort!(array)
p array
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
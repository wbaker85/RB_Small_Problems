def lights(num)
  arr = (1..num).map { |_| false}
  1.upto(num) do |pass|
    arr.map!.with_index do |val, idx|
      (idx + 1) % (pass) == 0 ? !val : val
    end
  end

  arr.map.with_index { |val, idx| val ? idx + 1 : val }
             .filter { |val| val }
end

p lights(10)
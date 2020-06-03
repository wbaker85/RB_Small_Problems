def buy_fruit(list)
  list.map do |item|
    output = []
    item[1].times { |count| output << item[0] }
    output
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


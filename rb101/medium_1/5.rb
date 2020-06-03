def diamond(num)
  num_stars = 1

  until num_stars > num
    puts ('*' * num_stars).center(num)
    num_stars += 2
  end

  num_stars = num - 2

  until num_stars < 1
    puts ('*' * num_stars).center(num)
    num_stars -= 2
  end
end

diamond(3)
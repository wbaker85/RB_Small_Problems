numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.filter { |_, val| val < 25 }

p low_numbers
GRADE_HASH = {
  90 => 'A',
  80 => 'B',
  70 => 'C',
  60 => 'D',
  0 => 'F',
}

def get_grade(*args)
  avg = args.sum.to_f / args.length

  grade_key = GRADE_HASH.keys.filter { |key| avg >= key }.max
  GRADE_HASH[grade_key]
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
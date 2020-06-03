def staggered_case(str)
  str.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
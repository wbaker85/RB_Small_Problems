def rotate_char(char)
  return char if !(/[a-z]/i =~ char)

  if char.downcase == char
    ord = (char.ord + 13) > 122 ? ((char.ord + 13) - 122) +  96: char.ord + 13
  else
    ord = (char.ord + 13) > 90 ? char.ord - 13 : char.ord + 13
  end

  ord.chr
end

def rot13(str)
  str.chars.map { |c| rotate_char(c) }.join
end

p rot13('Nqn Ybirynpr')
p rot13('Tenpr Ubccre')
p rot13('Nqryr Tbyqfgvar')
p rot13('Nyna Ghevat')
p rot13('Puneyrf Onoontr')
p rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
p rot13('Wbua Ngnanfbss')
p rot13('Ybvf Unvog')
p rot13('Pynhqr Funaaba')
p rot13('Fgrir Wbof')
p rot13('Ovyy Tngrf')
p rot13('Gvz Orearef-Yrr')
p rot13('Fgrir Jbmavnx')
p rot13('Xbaenq Mhfr')
p rot13('Fve Nagbal Ubner')
p rot13('Zneiva Zvafxl')
p rot13('Lhxvuveb Zngfhzbgb')
p rot13('Unllvz Fybavzfxv')
p rot13('Tregehqr Oynapu')
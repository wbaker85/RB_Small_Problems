def staggered_case(str)
  last_capped = false

  str.chars.reduce('') do |newStr, char|
    newStr += if char.match?(/[a-z]/i)
      last_capped = !last_capped
      last_capped ? char.upcase : char.downcase
    else
      char
    end
  end
end

p staggered_case('I Love Launch School!')

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
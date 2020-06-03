def balanced?(str)
  stack = 0

  str.each_char do |char|
    if char == '('
      stack += 1
    elsif char == ')'
      stack -= 1
    end

    return false if stack < 0
  end

  stack == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
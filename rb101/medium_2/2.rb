def block_word?(str)
  blocks = ['BO', 'XK', 'DQ', 'CP' ,'NA',
   'GT' ,'RE' ,'FS' ,'JW' ,'HU',
    'VI' ,'LY' ,'ZM']

  str.chars.each do |char|
    block_idx = blocks.find_index { |block| block.include?(char.upcase) }
    return false if !block_idx
    blocks.delete_at(block_idx)
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
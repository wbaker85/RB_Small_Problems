def raptor_block(bird_list)
  yield(bird_list)
end

raptor_block(%w(raven finch hawk eagle)) { |_, _, *rapts| p rapts }

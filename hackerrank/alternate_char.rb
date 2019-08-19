def alternate_char(word)
  left_char = nil
  counter = 0
  word.each_char do |char|
    if left_char.eql?(nil)
      left_char = char
      next
    end

    if left_char.eql?(char)
      counter += 1
    else
      left_char = char
    end
  end
  counter
end

p alternate_char('AAAA')
p alternate_char('BBBBB')
p alternate_char('ABABABAB')
p alternate_char('BABABA')
p alternate_char('AAABBB')

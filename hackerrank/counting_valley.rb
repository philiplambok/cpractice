def counting(n, word)
  valley = 0
  current = 0
  n.times.each do |index|
    if word[index].eql?('U')
      current += 1
    else
      current -= 1
    end
    valley += 1 if current.eql?(0) && word[index].eql?('U')
  end
  valley
end

p counting(8, 'UDDDUDUU')
p counting(12, 'DDUUDDUDUUUD')

def repeated_str(s, n)
  return 0 unless s.include?('a')
  return n if s.size.eql?(1)

  a_counter = s.count('a')
  # ((a_counter * 1.0 / s.size))
end

# p repeated_str('aba', 10)
# p repeated_str('a', 1_000_000_000_000)
p repeated_str('cfimaakj', 554_045_874_191)
p repeated_str('gfcaaaecbg', 547_602)

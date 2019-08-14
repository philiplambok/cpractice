vowels = %w[A a I i U u E e O o y Y]
word = gets.chomp

result = ''

word.each_char do |char|
  next if vowels.include?(char)

  result += ".#{char.downcase}"
end

puts result

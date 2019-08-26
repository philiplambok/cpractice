input = gets.chomp

expected_char = %w[H Q 9]
found = false

input.each_char do |char|
  next unless expected_char.include?(char)

  found = true
  break
end

if found.eql?(true)
  puts 'YES'
else
  puts 'NO'
end

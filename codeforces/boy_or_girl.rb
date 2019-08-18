name = gets.strip
registered_char = []
counter = 0

name.each_char do |char|
  next if registered_char.include?(char)

  registered_char.push(char)
  counter += 1
end

if counter.odd?
  puts 'IGNORE HIM!'
else
  puts 'CHAT WITH HER!'
end

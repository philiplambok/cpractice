total_play = gets.strip.to_i
play_string = gets.strip
play = play_string.split('')

anton_counter = 0
danik_counter = 0

0.upto(total_play - 1).each do |index|
  if play[index].eql?('A')
    anton_counter += 1
  else
    danik_counter += 1
  end
end

if anton_counter > danik_counter
  puts 'Anton'
elsif danik_counter > anton_counter
  puts 'Danik'
else
  puts 'Friendship'
end

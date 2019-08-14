problems_count = gets.chomp.to_i

counter = 0
problems_count.times.each do
  submission_string = gets.chomp
  submission = submission_string.split(' ').map(&:to_i)
  el_counter = 0
  submission.each do |el|
    el_counter += 1 if el.eql?(1)
  end
  counter += 1 if el_counter >= 2
end

puts counter

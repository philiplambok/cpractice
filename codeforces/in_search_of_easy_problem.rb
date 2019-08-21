input_size = gets.chomp.to_i
inputs_string = gets.chomp
inputs = inputs_string.split(' ')

hard_problem = false
inputs.each do |el|
  next if el.eql?('0')

  hard_problem = true
  break
end

if hard_problem.eql?(true)
  puts 'HARD'
else
  puts 'EASY'
end

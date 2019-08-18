input = gets.strip
input_array = input.split(' ').map(&:to_i)
limak = input_array[0]
bob = input_array[1]
counter = 0

loop do
  break if limak > bob

  limak *= 3
  bob *= 2
  counter += 1
end

puts counter

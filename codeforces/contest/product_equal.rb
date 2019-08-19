number_size = gets.strip.to_i
numbers_string = gets.strip.to_s
numbers = numbers_string.split(' ').map(&:to_i)

coins = 0
negative = 0
numbers.each do |number|
  negative += 1 if number < 0
  diff = (number.abs - 1).abs
  coins += diff
end

coins += 2 if negative.odd?

puts coins

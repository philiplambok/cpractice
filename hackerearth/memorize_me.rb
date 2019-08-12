def count_numbers(array, number)
  counter = 0
  array.each do |stored_number|
    counter += 1 if stored_number.eql?(number)
  end
  return 'NOT PRESENT' if counter.eql?(0)

  counter
end

total_saved_numbers = gets.chomp.to_i
saved_numbers_string = gets.chomp
saved_numbers = saved_numbers_string.split(' ').map(&:to_i)

total_check_numbers = gets.chomp.to_i

output = []
total_check_numbers.times.each do
  check_number = gets.chomp.to_i
  output << count_numbers(saved_numbers, check_number)
end

output.each do |element|
  puts element
end

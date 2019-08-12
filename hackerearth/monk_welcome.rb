element_size = gets.chomp.to_i

array_one_string = gets.chomp
array_one = array_one_string.split(' ').map(&:to_i)

array_two_string = gets.chomp
array_two = array_two_string.split(' ').map(&:to_i)

array_sum = []
element_size.times do |index|
  array_sum[index] = array_one[index] + array_two[index]
end

array_sum.each do |element|
  print "#{element} "
end
puts

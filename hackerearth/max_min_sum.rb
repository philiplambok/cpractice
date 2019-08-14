number_of_testcase = gets.chomp.to_i

output = []
number_of_testcase.times.each do
  max_min_str = gets.chomp
  max_min_array = max_min_str.split(' ').map(&:to_i)
  max = max_min_array[0]
  min = max_min_array[1]
  elements_string = gets.chomp
  elements = elements_string.split(' ').map(&:to_i)
  maximum_sum = 0
  elements.each do |el|
    next if el >= max

    maximum_sum += el
  end
  minimum_sum = 0
  elements.each do |el|
    next if el <= min

    minimum_sum += el
  end
  diff = (minimum_sum - maximum_sum).abs
  output.push(diff)
end

output.each do |el|
  puts el
end

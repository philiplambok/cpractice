def find_minumum(count_of_number, numbers)
  mid = (count_of_number / 2).round
  left = numbers[0..mid]
  right = numbers[mid + 1..-1]
  max1 = left.join('').to_i + right.join('').to_i
  mid -= 1
  left = numbers[0..mid]
  right = numbers[mid + 1..-1]
  max2 = left.join('').to_i + right.join('').to_i
  [max1, max2].min
end

count_of_number = gets.chomp.to_i
number_string = gets.chomp
numbers = number_string.split('').map(&:to_i)
result = find_minumum(count_of_number, numbers)
puts result

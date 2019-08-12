def element_include?(array, element)
  include_state = false
  array.each do |stored_element|
    if stored_element.eql?(element)
      include_state = true
      break
    end
  end
  include_state
end

input = gets.chomp
input_array = input.split(' ').map(&:to_i)
array_size = input_array[0]
search_sum = input_array[1].to_i

array_string = gets.chomp
array = array_string.split(' ').map(&:to_i)

sums = []
(array_size - 1).times.each do |index|
  sum = array[index] + array[index + 1]
  sums << sum
end

if element_include?(sums, search_sum)
  puts 'YES'
else
  puts 'NO'
end

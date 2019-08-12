element_size_and_search = gets.chomp
element_size_and_search_array = element_size_and_search.split(' ')
_ = element_size_and_search_array[0].to_i
element_search = element_size_and_search_array[1].to_i

elements_string = gets.chomp
elements = elements_string.split(' ').map(&:to_i)

found_index = nil
elements.each_with_index do |element, index|
  found_index = index if element.eql?(element_search)
end

if found_index.nil?
  found_index = -1
else
  found_index += 1
end

puts found_index

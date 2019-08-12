def find_index(array, search_element)
  found_index = nil
  array.each_with_index do |element, index|
    if search_element.eql?(element)
      found_index = index
      break
    end
  end
  return -1 if found_index.eql?(nil)

  found_index
end

_ = gets.chomp
elements_string = gets.chomp
elements = elements_string.split(' ').map(&:to_i)

search_number = gets.chomp.to_i

found_index = find_index(elements, search_number)

puts found_index

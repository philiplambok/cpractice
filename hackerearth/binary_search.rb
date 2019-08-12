def find_index(array, element)
  low = 0
  high = array.size - 1
  found_index = nil
  low_state = true
  while low <= high
    if low_state.eql?(true)
      if array[low].eql?(element)
        found_index = low
        break
      end
      low += 1
      low_state = false
    else
      if array[high].eql?(element)
        found_index = high
        break
      end
      high -= 1
      low_state = true
    end
  end
  return -1 if found_index.eql?(nil)

  found_index + 1
end

_ = gets.chomp.to_i
elements_string = gets.chomp
elements = elements_string.split(' ').map(&:to_i)
input_counter = gets.chomp.to_i

output = []
input_counter.times.each do
  number = gets.chomp.to_i
  index = find_index(elements, number)
  output.push(index)
end

output.each do |element|
  puts element
end

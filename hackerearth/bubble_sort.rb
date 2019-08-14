elements_count = gets.chomp.to_i
elements_string = gets.chomp

elements = elements_string.split(' ').map(&:to_i)

swap_counter = 0
(elements_count - 1).times.each do
  (elements_count - 1).times.each do |index|
    if elements[index] > elements[index + 1]
      elements[index + 1], elements[index] = elements[index], elements[index + 1]
      swap_counter += 1
    end
  end
end

puts swap_counter

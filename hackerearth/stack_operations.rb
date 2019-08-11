input = gets.chomp

input_array = input.split(' ').map(&:to_i)
operation_size = input_array[1]
elements_string = gets.chomp
elements = elements_string.split(' ').map(&:to_i)

stack = elements.reverse
max = -1
(operation_size - 1).times.each do
  if max.eql?(nil)
    max = stack.pop
    next
  end
  posible_max = stack.pop
  max = posible_max if posible_max > max
end
p stack
p max

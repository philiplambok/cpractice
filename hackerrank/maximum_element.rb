n = gets.chomp

results = []
n.to_i.times.each do
  input_str = gets.chomp
  input_arr = input_str.split(' ')
  element = { query: input_arr[0].to_i, element: input_arr[1].to_i }
  results << element
end

stack = []
results.each do |element|
  if element[:query].eql?(1)
    stack.push(element[:element])
    next
  end

  if element[:query].eql?(2)
    stack.pop
    next
  end

  puts stack.max if element[:query].eql?(3)
end

puts results.join(',')

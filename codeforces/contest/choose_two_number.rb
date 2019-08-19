a_size = gets.strip.to_i
a_string = gets.strip

b_size = gets.strip.to_i
b_string = gets.strip

a = a_string.split(' ').map(&:to_i)
b = b_string.split(' ').map(&:to_i)

output = nil

a.each_with_index do |a_element, _a_index|
  b.each_with_index do |b_element, _b_index|
    sum = a_element + b_element
    next if a.include?(sum) || b.include?(sum)

    output = "#{a_element} #{b_element}"
    break
  end

  break unless output.eql?(nil)
end

puts output

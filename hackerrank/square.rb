def square(lower, upper)
  counter = 0
  lower.upto(upper).each do |number|
    square_number = number**0.5
    counter += 1 if (square_number * square_number).eql?(number * 1.0)
  end
  counter
end

p square(3, 9)
p square(17, 24)

def factorial_of(n)
  result = 1
  1.upto(n).each do |index|
    result *= index
  end
  result
end

puts factorial_of(4)

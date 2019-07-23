def serial_average(string)
  prepend = string[0, 3]
  number_one = string[4, 5]
  number_two = string[10, 5]
  number_one_f = number_one.to_f
  number_two_f = number_two.to_f
  average = (number_two_f + number_one_f) / 2
  result = "#{prepend}-#{average.round(2)}"
  if result.size.eql?(8)
    "#{result}0"
  else
    result
  end
end

p serial_average('002-10.00-20.00')
p serial_average('001-12.43-56.78')

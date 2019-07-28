power_array = lambda do |power, array_size|
  1.upto(Float::INFINITY).lazy.map { |x| x**power }.first(array_size)
end

p power_array.call(2, 5)

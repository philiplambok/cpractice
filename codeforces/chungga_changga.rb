input = gets.chomp
input_array = input.split(' ').map(&:to_i)

sasha = input_array[0]
masha = input_array[1]
price = input_array[2]

sasha_coconut, sasha_mod = sasha.divmod(price)
masha_coconut, masha_mod = masha.divmod(price)

max = sasha_coconut + masha_coconut

if sasha_mod > masha_mod
  swap = price - sasha_mod
  sasha += swap
  masha -= swap
else
  swap = price - masha_mod
  masha += swap
  sasha -= swap
end

max_temp = (sasha / price) + (masha / price)
max_temp = 0 if max_temp.eql?(nil)

if max_temp > max
  puts "#{max_temp} #{swap}"
else
  puts "#{max} 0"
end

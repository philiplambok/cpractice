records_count = gets.chomp.to_i

hash = {}

records_count.times.each do
  row = gets.chomp
  row_array = row.split(' ')
  key = row_array[0]
  value = row_array[1]
  hash[key] = value
end

output_count = gets.chomp.to_i

output = []
output_count.times.each do
  search_key = gets.chomp
  output.push(hash[search_key])
end

output.each do |element|
  puts element
end

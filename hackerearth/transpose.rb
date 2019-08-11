row_column_s = gets.chomp
row_column_array = row_column_s.split(' ').map(&:to_i)
row_count = row_column_array[0]
column_count = row_column_array[1]

matrix = []
row_count.times.each do
  row_input = gets.chomp
  row_array = row_input.split(' ').map(&:to_i)
  matrix.push(row_array)
end

transpose = []
column_count.times.each do |column_index|
  row = []
  row_count.times.each do |row_index|
    row.push(matrix[row_index][column_index])
  end
  transpose.push(row)
end

transpose.each do |row|
  row.each do |element|
    print element
    print ' '
  end
  puts
end

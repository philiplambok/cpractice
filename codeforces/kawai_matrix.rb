matrix = []
5.times do
  row_string = gets.strip
  row = row_string.split(' ').map(&:to_i)
  matrix.push(row)
end

row = nil
column = nil
5.times do |row_index|
  5.times do |column_index|
    next unless matrix[row_index][column_index].eql?(1)

    row = row_index
    column = column_index
    break
  end
end

diff_row = (row - 2).abs
diff_column = (column - 2).abs
result = diff_row + diff_column
puts result

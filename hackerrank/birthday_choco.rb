def birthday_choco(s, d, m)
  storage = []
  filtered = []
  s_sort = s.sort
  s_sort.each_with_index do |number_outer, index_outer|
    filtered << number_outer
    s_sort.each_with_index do |number_inner, index_inner|
      next if index_inner < index_outer

      filtered << number_inner if filtered.size < m

      next unless filtered.size.eql?(m)

      storage << filtered if filtered.sum.eql?(d)
      filtered = [number_outer]
    end
  end
  # find max
  max = 0
  storage.each do |arr|
    max = arr.size if arr.size > max
  end
  max
end

s = [2, 2, 1, 3, 2]
d = 4
m = 2
p birthday_choco(s, d, m)

s = [1, 2, 1, 3, 2]
d = 3
m = 2
p birthday_choco(s, d, m)

s = [1, 1, 1, 1, 1, 1]
d = 3
m = 2
p birthday_choco(s, d, m)

s = [4]
d = 4
m = 1
p birthday_choco(s, d, m)

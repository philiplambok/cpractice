# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  types = j.split('')
  total = 0
  s.each_char do |char|
    total += 1 if types.include?(char)
  end
  total
end
# J = "aA", S = "aAAbbbb"
p num_jewels_in_stones('aA', 'aAAbbbb')
p num_jewels_in_stones('z', 'ZZ')

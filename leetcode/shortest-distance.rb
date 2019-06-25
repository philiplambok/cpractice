# https://leetcode.com/problems/shortest-distance-to-a-character/

# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  distances = []
  s.split('').each_with_index do |str, index|
    distances << index if str.eql?(c)
  end
  str_dis = []
  s.split('').each_with_index do |_str, index|
    char_dis = []
    distances.each do |d|
      dis = (d - index).abs
      char_dis << dis
    end
    str_dis << char_dis.min
    char_dis = []
  end
  str_dis
end

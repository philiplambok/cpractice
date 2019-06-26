# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  bin = n.to_s(2).split('')
  start = false
  distance = 0
  max_distance = 0
  bin.each_with_index do |char, _index|
    if start.eql?(false) && char.eql?('1')
      start = true
      distance = 0
      next
    end

    next unless start.eql?(true)

    distance += 1
    next unless char.eql?('1')

    max_distance = distance if distance > max_distance
    distance = 0
    start = true
  end
  max_distance
end

puts binary_gap(22)
puts binary_gap(13)
puts binary_gap(8)

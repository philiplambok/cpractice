# @param {Integer[]} a
# @return {Integer[]}
def sorted_squares(a)
  a_kuad = a.map { |number| (number**2).abs }
  a_kuad.sort
end

input = [-4, -1, 0, 3, 10]
puts sorted_squares(input)

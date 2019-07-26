# hikara
def is_palindrom(s)
  alpha_numeric = ('a'..'z').to_a + ('0'..'9').to_a
  filtered = []
  s.each_char do |char|
    filtered.push(char.downcase) if alpha_numeric.include?(char.downcase)
  end
  reversed = filtered.reverse
  puts filtered.join(',')
  puts reversed.join(',')
  filtered.eql?(reversed)
end

# p is_palindrom('A man, a plan, a canal: Panama')
# p is_palindrom('race a car')
p is_palindrom('0P')

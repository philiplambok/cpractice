# https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

# @param {String} s
# @return {String}
def remove_duplicates(s)
  filtered = []
  s.split('').each do |char|
    if filtered.empty?
      filtered << char
      next
    end

    if filtered.last.eql?(char)
      filtered.pop
    else
      filtered.push(char)
    end
  end
  filtered.join('')
end

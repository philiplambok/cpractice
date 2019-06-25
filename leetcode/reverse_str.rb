# https://leetcode.com/problems/reverse-string/

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  back = s.size - 1
  front = 0
  loop do
    break if front == back || front > back

    s[back], s[front] = s[front], s[back]
    back -= 1
    front += 1
  end
  s
end

arr = %w[H a n n a h]
puts reverse_string(arr)

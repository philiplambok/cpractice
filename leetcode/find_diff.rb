# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  output = ''
  t.each_char.with_index do |char, index|
    next if s[index].eql?(char)

    output += char
  end
  output
end

s = 'abcd'
t = 'abcde'
p find_the_difference(s, t)

s = 'a'
t = 'aa'
p find_the_difference(s, t)

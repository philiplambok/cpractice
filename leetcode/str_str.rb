def str_str(haystack, needle)
  return 0 if needle.empty?

  haystack.index(needle) || -1
end

p str_str('hello', 'll')
p str_str('aaaaaa', 'aab')
p str_str('aaaaaa', '')

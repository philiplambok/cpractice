def string_construct(string)
  cost = 0
  new_str = ''
  cache = ''
  last_index = string.length - 1
  string.each_char.with_index do |char, index|
    if new_str.include?(char)
      cache += char
    else
      if cache.empty?
        new_str += char
        cost += 1
      else
        new_str += cache
        if index.eql?(last_index)
          new_str += char
          cost += 1
        else
          cache += char
        end
      end
    end
  end
  cost
end

p string_construct('abcd')
p string_construct('abab')
p string_construct('abababpp')

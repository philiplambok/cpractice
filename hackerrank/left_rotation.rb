def left_rotation(a, d)
  d.times.each do
    cache = a.shift
    a.push(cache)
  end
  a
end

def utopian_tree(n)
  height = 1
  n.times.each do
    if height > 1 && height.odd?
      height *= 2
    else
      height += 1
    end
  end
  height
end

p utopian_tree(5)

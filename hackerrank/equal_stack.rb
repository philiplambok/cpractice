def equal_stack(h1, h2, h3)
  until [h1.sum, h2.sum, h3.sum].uniq.eql?(3)
    if h1.sum < h2.sum || h1.sum < h3.sum
      h1.pop
      next
    end

    if h2.sum < h1.sum || h2.sum < h3.sum
      h2.pop
      next
    end

    if h3.sum < h1.sum || h3.sum < h2.sum
      h3.pop
      next
    end

    break if h1.empty?
  end

  h1.sum
end

h1 = [3, 2, 1, 1, 1]
h2 = [4, 3, 2]
h3 = [1, 1, 4, 1]

equal_stack(h1, h2, h3)

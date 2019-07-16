# @param {Integer[]} a
# @return {Boolean}
def is_monotonic(a)
  state = nil
  current = nil
  a.each do |number|
    if current.eql?(nil)
      current = number
      next
    end

    if state.nil?
      state = :down if current > number
      state = :up if current < number
    end

    next if state.nil?

    return false if state.eql?(:up) && current > number

    return false if state.eql?(:down) && current < number

    current = number
  end
  true
end

a = [1, 2, 2, 3]
p is_monotonic(a)

a = [6, 5, 4, 4]
p is_monotonic(a)

b = [1, 3, 2]
p is_monotonic(b)
# up
# 4,5,6,7

a = [1, 1, 1]
p is_monotonic(a)

# down
# 5,4,5,2

# @param {Integer} target
# @return {Integer}
def reach_number(target)
  return 1 if target.eql?(1) || target.eql?(-1)

  # Process one (just doing positive stuff)
  steps = 0
  move_counter = 1
  current_location = 0
  loop do
    break if target >= steps

    current_location += move_counter
    move_counter += 1
    steps += 1
  end
  return steps if target.eql?(current_location)

  # Doing process two
  steps = 0
  move_counter
end

# p reach_number(3)
# p reach_number(2)
p reach_number(-2)
p reach_number(0)

# https://leetcode.com/problems/last-stone-weight/

# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  if stones.size.eql?(2)
    if stones.first > stones.last
      return stones.first - stones.last
    else
      return stones.last - stones.first
    end
  end

  until stones.size.eql?(1)
    # search 2 max rocks weight
    max1 = [0, nil]
    max2 = [0, nil]
    stones.each_with_index do |stone, index|
      if stone > max1[0]
        max1[0] = stone
        max1[1] = index
      end
    end
    stones.each_with_index do |stone, index|
      next if index.eql?(max1[1])

      if stone > max2[0]
        max2[0] = stone
        max2[1] = index
      end
    end
    diff = if max1[0] > max2[0]
             max2[0]
           else
             max1[0]
           end
    stones[max1[1]] = stones[max1[1]] - diff
    stones[max2[1]] = stones[max2[1]] - diff
    stones.delete(0)
    if stones.empty?
      stones << 0
      break
    end
  end
  stones.first
end

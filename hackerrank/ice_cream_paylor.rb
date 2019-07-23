def ice_cream_paylor(m, arr)
  arr.each_with_index do |number_outer, index|
    arr.each_with_index do |number, index_number|
      next if index_number <= index

      if (number_outer + number).eql?(m)
        puts "number_outer = #{number_outer}; number = #{number}"
        return [index + 1, index_number + 1]
      end
    end
  end
  nil
end

p ice_cream_paylor(4, [1, 4, 5, 3, 2])
p ice_cream_paylor(4, [2, 2, 4, 3])

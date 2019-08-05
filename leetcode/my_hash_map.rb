class MyHashMap
  attr_reader :keys, :values

  def initialize
    @counter = 0
    @keys = []
    @values = []
  end

  def put(key, value)
    index_found = nil
    @keys.each_with_index do |stored_key, index|
      if stored_key.eql?(key)
        index_found = index
        break
      end
    end
    if index_found.eql?(nil)
      @keys << key
      @values << value
      @counter += 1
    else
      @values[index_found] = value
    end
  end

  def get(key)
    index_found = nil
    @keys.each_with_index do |stored_key, index|
      if stored_key.eql?(key)
        index_found = index
        break
      end
    end
    puts "index found = #{index_found} | key #{key}"
    return -1 if index_found.eql?(nil)

    @values[index_found]
  end

  def remove(key)
    index_found = nil
    @keys.each_with_index do |stored_key, index|
      if stored_key.eql?(key)
        index_found = index
        break
      end
    end
    return -1 if index_found.eql?(nil)

    @keys.delete_at(index_found)
    @values.delete_at(index_found)
  end
end

obj = MyHashMap.new
obj.put(1, 1)
obj.put(2, 2)
# p obj.keys.join(', ')
# p obj.values.join(', ')
obj.put(2, 1)
# p obj.keys.join(', ')
# p obj.values.join(', ')
obj.remove(2)
p obj.keys.join(', ')
p obj.values.join(', ')

# hashMap = MyHashMap.new
# hashMap.put(1, 1)
# hashMap.put(2, 2)
# hashMap.get(1);           # // returns 1
# hashMap.get(3);           # // returns -1 (not found)
# hashMap.put(2, 1); # // update the existing value
# hashMap.get(2); # // returns 1
# hashMap.remove(2); # // remove the mapping for 2
# p hashMap.get(2); # // returns -1 (not found)

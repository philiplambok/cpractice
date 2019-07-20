def maximum_toys(prices, k)
  storage = []
  numbers = []
  index_skip = 0
  prices_sorted = prices.sort
  prices_sorted.size.times do |_index|
    prices.each_with_index do |price, index_price|
      next if index_price < index_skip

      numbers << price if numbers.sum + price <= k
    end
    storage << numbers
    numbers = []
    index_skip += 1
  end
  find_maximum_size(storage)
end

def find_maximum_size(arrays)
  max = 0
  arrays.each do |arr|
    max = arr.size if arr.size > max
  end
  max
end

prices = [1, 2, 3, 4]
k = 7
p maximum_toys(prices, k)

prices = [1, 12, 5, 111, 200, 1000, 10]
k = 50
p maximum_toys(prices, k)

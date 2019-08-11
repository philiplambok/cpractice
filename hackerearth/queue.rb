class QueueData
  attr_reader :items

  def initialize
    @items = []
    @top_index = -1
  end

  def enqueue(number)
    @top_index += 1
    @items[@top_index] = number
  end

  def dequeue
    return -1 if @items.empty?

    deleted = @items.delete_at(0)
    @top_index -= 1
    deleted
  end
end

queue = QueueData.new
input_count = gets.chomp.to_i
output = []

input_count.times.each do
  row = gets.chomp
  row_array = row.split(' ')
  type = row_array[0]
  number = row_array[1].to_i
  if type.eql?('E')
    queue.enqueue(number)
    output.push(queue.items.size)
  else
    deleted = queue.dequeue
    output.push("#{deleted} #{queue.items.size}")
  end
end

output.each do |element|
  puts element
end

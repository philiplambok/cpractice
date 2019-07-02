class MinStack
  def initialize
    @storage = []
  end

  def push(number)
    @storage.push(number)
  end

  def pop
    @storage.pop
  end

  def top
    @storage.last
  end

  def get_min
    @storage.min
  end
end

min_stack = MinStack.new
min_stack.push(-2)
min_stack.push(0)
min_stack.push(-3)
p min_stack.get_min; # --> Returns -3.
min_stack.pop
min_stack.top; #--> Returns 0.
p min_stack.get_min; #--> Returns -2.

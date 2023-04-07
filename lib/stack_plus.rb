class StackPlus
  attr_reader :stack
  def initialize
    @stack = []
  end
#pushes the integer to the top of the stack
  def push(value)
    stack << value
  end
#pops the top value off the stack & returns the value
#if empty, returns -1
  def pop
    return -1 unless stack.size > 0
    stack.pop()
  end
#increments the value of the bottom n number of elements by 1
#if less than n elements in stack, increment all by 1
  def increment(n)
    [n, stack.size].min.times do |i|
      stack[i] += 1
  end
end
end

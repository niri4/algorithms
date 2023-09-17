# https://leetcode.com/problems/min-stack/submissions/

class MinStack
  def initialize()
    @stack = []
    @minStack = []
  end
  
  attr_accessor :stack, :minStack
=begin
    :type val: Integer
    :rtype: Void
=end
  def push(val)
    stack.append(val)
    min_val = (minStack.empty? || val < minStack.last) ? val : minStack.last
    minStack.append(min_val)
    nil
  end

=begin
    :rtype: Void
=end
  
  def pop()
    stack.pop
    minStack.pop
    nil
  end

=begin
    :rtype: Integer
=end
  
  def top()
    return nil if stack.empty? 
    stack.last
  end

=begin
    :rtype: Integer
=end
  def get_min()
    return nil if minStack.empty? 
    minStack.last
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
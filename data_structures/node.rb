class Node
  attr_reader :data, :pointer

  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end

  def set_pointer(node)
    @pointer = node
  end

  def get_pointer
    @pointer
  end

  def next?
    !@pointer.nil?
  end
end
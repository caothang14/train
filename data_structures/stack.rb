load 'node.rb'

class Stack
  def initialize(data)
    @head = Node.new(data, nil)
  end

  def push(data)
    current_node = @head

    new_node = Node.new(data, nil)
    new_node.set_pointer(current_node)
    @head = new_node
  end

  def pop
    first_node = @head
    @head = @head.get_pointer
    return first_node.data
  end

  def display
    current_node = @head
    return if current_node.nil?

    while current_node.next?
      p current_node.data
      current_node = current_node.pointer
    end

    p current_node.data
  end

end
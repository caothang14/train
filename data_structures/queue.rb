load 'node.rb'

class Queue
  def initialize(data)
    @head = Node.new(data, nil)
  end

  def push(data)
    current_node = @head

    while current_node.next?
      current_node = current_node.get_pointer
    end

    new_node = Node.new(data, nil)

    current_node.set_pointer(new_node)
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
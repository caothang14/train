load 'node.rb'

class LinkedList
  def initialize(data)
    @head = Node.new(data, nil)
  end

  def insert_node(data)
    current_node = @head

    while current_node.next?
      current_node = current_node.get_pointer
    end

    new_node = Node.new(data, nil)

    current_node.set_pointer(new_node)
  end

  def remove_node(data)
    current_node = @head

    while 1
      if current_node && current_node.data == data
        current_node = @head = current_node.get_pointer
      else
        break
      end
    end

    while 1
      break if current_node.nil? || current_node.get_pointer.nil?
      next_node = current_node.get_pointer
      if next_node.data == data
        current_node.set_pointer(next_node.get_pointer)
      end
      current_node = current_node.get_pointer
      break if current_node.nil?
    end
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

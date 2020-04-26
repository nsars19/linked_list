class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append value
    node = Node.new value
    @tail ? @tail.next_node = node : @head = node
    @tail = node
  end

  def prepend value
    node = Node.new value
    node.next_node = @head if @head     
    @head = node
  end

  def size count = 0, node = @head
    until node == nil
      node = node.next_node
      count += 1
    end
    count
  end

  def at index, node = @head, position = 0
    until position == index
      node = node.next_node
      position += 1
    end
    node
  end

  def pop node = @head, position = 0
    @head = nil if self.size == 1
    popped_value = @tail

    node = at(self.size - 2)

    @tail = node
    @tail = nil if self.size == 0
    node.next_node = nil
    popped_value
  end

  def contains? value, node = @head
    while node
      return true if node.value == value
      node = node.next_node
    end
    false
  end

  def find value, node = @head, position = 0
    while node
      return position if value == node.value
      node = node.next_node
      position += 1
    end
    nil
  end

  def to_s node = @head
    while node
      print "( #{node.value} ) -> "
      node = node.next_node
    end
    p nil
  end

  def insert_at index, value, node = @head
    return @head = Node.new(value, @head) if index == 0
    node = at(index - 1)
    node.next_node = Node.new value, node.next_node
  end

  def remove_at index, node = @head
    return @head = node.next_node if index == 0
    node = at(index - 1)
    node.next_node = node.next_node.next_node
  end
end

class Node
  attr_accessor :value, :next_node
  
  def initialize value = nil, next_node = nil
    @value     = value
    @next_node = next_node
  end
end
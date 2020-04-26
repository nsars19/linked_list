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
    p node.value
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

  def at index, position = 0, node = @head
    until position == index
      node = node.next_node
      position += 1
    end
    node
  end

  def pop node = @head, position = 0
    @head = nil if self.size == 1
    popped_value = @tail

    until position == self.size - 2 || self.size == 0
      node = node.next_node unless node == nil
      position += 1
    end
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

  def find value
  end

  def to_s
    #@list.each { |node| print "( #{node} ) -> " }; p nil
  end

  def insert_at value, index
  end

  def remove_at index
  end
end

class Node
  attr_accessor :value, :next_node
  
  def initialize value = nil, next_node = nil
    @value     = value
    @next_node = next_node
  end
end
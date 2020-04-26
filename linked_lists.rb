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

  def size
  end

  def head
  end

  def tail
  end

  def at index
  end

  def pop
  end

  def contains? value
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
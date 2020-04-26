class LinkedList
  def initialize list = []
    @list = list
  end
  def append value
    @list.push value
  end

  def prepend value
    @list.unshift value
  end

  def size
    @list.size
  end

  def head
    @list.first
  end

  def tail
    @list.last
  end

  def at index
    @list[index]
  end

  def pop
    @list.pop
  end

  def contains? value
    @list.include? value
  end

  def find value
    @list.index value
  end

  def to_s
    @list.each { |node| print "( #{node} ) -> " }; p nil
  end
end

class Node
  def value
    nil
  end

  def next_node
    nil
  end
end
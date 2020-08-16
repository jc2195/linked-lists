class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @tail.nil?
      @head = Node.new(value)
      @tail = Node.new(value)
    else
      node = Node.new(value)
      if @head.next_node.nil?
        @head.next_node = node
      else
        @tail.next_node = node
      end
      @tail = node
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
      @tail = Node.new(value)
    else
      node = Node.new(value, @head)
      @head = node
    end
  end

  def size
    length = 0
    node = @head
    unless node.nil?
      until node.nil?
        length += 1
        node = node.next_node
      end
    end
    length
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    counter = index
    node = @head
    until counter == 0
      node = node.next_node
      counter -= 1
    end
    node
  end

  def pop
    length = size
    unless length.zero?
      if length == 1
        @head = nil
        @tail = nil
      else
        at(length - 2).next_node = nil
        @tail = at(length - 2)
      end
    end
  end

  def contains?(value)
    flag = false
    node = @head
    unless node.nil?
      until node.nil? || flag == true
        flag = value == node.value
        node = node.next_node
      end
    end
    flag
  end

  def find(value)
    flag = false
    node = @head
    index = 0
    unless node.nil?
      until node.nil? || flag == true
        if value == node.value
          flag = true
        else
          index += 1
          node = node.next_node
        end
      end
    end
    flag == true ? index : nil
  end

  def to_s
    node = @head
    unless node.nil?
      until node.nil?
        print "( #{node.value} ) -> "
        node = node.next_node
      end
    end
    puts 'nil'
  end

  def insert_at(value, index)
    if index == size + 1 || size.zero?
      append(value)
    elsif index.zero?
      prepend(value)
    else
      before = at(index - 1)
      after = at(index)
      node = Node.new(value, after)
      before.next_node = node
    end
  end

  def remove_at(index)
    unless size.zero?
      if index == size - 1 || size == 1
        pop
      elsif index == 0
        @start = at(1)
      else
        before = at(index - 1)
        after = at(index + 1)
        before.next_node = after
      end
    end
  end
end

class Node
  attr_accessor :value
  attr_accessor :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new
linked_list.append(0)
linked_list.append(1)
linked_list.append(2)
linked_list.append(3)
linked_list.append(4)
linked_list.prepend(-1)
linked_list.prepend(-2)
linked_list.append(5)
linked_list.to_s
puts linked_list.size
puts linked_list.at(2).value
linked_list.pop
linked_list.to_s
puts linked_list.contains?(2)
puts linked_list.contains?(7)
puts linked_list.find(2)
puts linked_list.find(7)
linked_list.insert_at(1.5, 4)
linked_list.to_s
linked_list.remove_at(4)
linked_list.to_s
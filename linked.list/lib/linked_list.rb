require 'pry'
require './lib/node'

class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    # adds a new node containing value to the end of the list
    new_node = Node.new(value, nil)
    if @tail
      # get last node and have it point to newly created node
      previous_tail_node = @tail
      previous_tail_node.next_node = new_node
    else
      # if no nodes present create the first/last
      @head = new_node if @head == nil
    end
    @tail = new_node
    @size += 1
    new_node # return the object created
  end

  def prepend(value)
    # adds a new node containing value to the beginning of the list
    if @head
      @head = Node.new(value, @head)
    else
      # if no nodes present create the first/last
      @head = Node.new(value, nil)
      @tail = @head
    end
    @size += 1
    @head # return the object created
  end

  def count_nodes
    # traverse list and count each node. This should match @size, but can catch
    # unexpected errors that may have damaged the list.
    count = 0
    return count if @head == nil
    current_node = @head
    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def at(index)
    return nil if index > @size-1 || index < 0
    return @head if index == 0
    count = 0
    current_node = @head
    while current_node
      count += 1
      current_node = current_node.next_node
      break if count == index
    end
    return current_node
  end

  def contains?(contains_value)
    return true if find(contains_value)
    return false
  end

  def find(find_value)
    # returns the index of a value or nil
    return nil unless @head
    index = 0
    current_node = @head
    while current_node
      return index if current_node.value == find_value
      current_node = current_node.next_node
      index += 1
    end
    return nil
  end

  def to_s
    return "nil" unless @head
    result = []
    current_node = @head
    while current_node
      result << "( #{current_node.value} )"
      current_node = current_node.next_node
    end
    result << "nil"
    result.join(" -> ")
  end

end

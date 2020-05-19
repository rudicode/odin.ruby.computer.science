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
      # if no nodes
      @head = new_node if @head == nil # create first node
    end
    @tail = new_node
    @size += 1
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
  end
end

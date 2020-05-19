require 'pry'
require './lib/node'
require './lib/linked_list'


test_list = LinkedList.new
# test_node = Node.new

# test_list.append("test: append A.")
# test_list.append("test: append B.")
# binding.pry
test_list.prepend("test: prepend C.")
test_list.prepend("test: prepend B.")
test_list.prepend("test: prepend A.")
test_list.append("test: append D.")
test_list.append("test: append E.")
puts test_list

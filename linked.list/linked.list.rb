require './lib/linked_list'


test_list = LinkedList.new

test_list.prepend("prepend C.")
test_list.prepend("prepend B.")
test_list.prepend("prepend A.")
test_list.append("append D.")
test_list.append("append E.")
puts test_list

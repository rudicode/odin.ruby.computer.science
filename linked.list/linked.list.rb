require './lib/linked_list'

class Person
  attr_accessor :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def to_s
    "I'm #{@name} and I'm #{@age} years old."
  end
end

bob = Person.new("Bob", 22)

test_list = LinkedList.new

test_list.prepend("C")
test_list.prepend("B")
test_list.prepend("A")
test_list.append("D")
test_list.append("E")
test_list.append(bob)
puts test_list
test_list.remove_at(1)
puts test_list

test_list.pop
puts test_list

test_list.append(bob)
puts test_list

test_list.remove_at(0)
puts test_list

index = test_list.find('D')
test_list.remove_at(index)
puts test_list

index = test_list.find(bob)
another_bob = test_list.at(index)
puts another_bob.value

print "Is E in the list? "
test_list.contains?('E') ? puts("yes.") : puts("no.")
print "Is Q in the list? "
test_list.contains?('Q') ? puts("yes.") : puts("no.")

while test_list.size > 0
  test_list.pop
end
puts test_list

string = "Testingz lyinked_list."
puts string
string.each_char { |chr| test_list.append(chr) }
puts test_list
puts "oops spelled that wrong. Lets remove the z and y."
test_list.remove_at( test_list.find('z'))
test_list.remove_at( test_list.find('y'))
puts test_list

new_string = ""
test_list.size.times do |count|
  new_string << test_list.at(count).value
end
puts new_string

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# Reverse linkedlist with mutation
def reverse_list(list, previous=nil)
  # do stuff
  current_head = list.next_node
  list.next_node = previous
  if current_head
    reverse_list(current_head, list)
  else
    list
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(83, node4)
node6 = LinkedListNode.new(67, node5)
node7 = LinkedListNode.new(02, node6)

print_values(node7)

puts "-------"

revlist = reverse_list(node7)
print_values(revlist)
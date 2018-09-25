load 'linked_list.rb'


first10 = LinkedList.new(1)
(2..10).each {|x| first10.insert_node(x)}
# puts "forward!"
# first10.display

# first10.insert_node(4)
# first10.display

first10.remove_node(1)
first10.display

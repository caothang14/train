load 'linked_list.rb'
load 'queue.rb'
load 'stack.rb'


first10 = Stack.new(1)
(2..10).each {|x| first10.push(x)}

first10.display

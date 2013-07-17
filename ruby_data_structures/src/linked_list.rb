class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def addNode value
    @node = Node.new(value)
    if @tail == nil
      @head = @node
      @tail = @node
      puts @tail.inspect
    else
      @tail.next = @node
      puts @tail.next.value
      @tail.next()
      @tail= @node
    end
  end

  def contains value, pos=@head
    # pos= pos or head
    if pos.value == value
       return true
    elsif pos.next == nil
      return false
    else
      return contains(value , pos.next)
    end

  end

end

class Node
  attr_accessor :next
  attr_accessor :value
  def initialize value
    @value = value
    @next = nil
  end
end


list = LinkedList.new()

list.addNode(89)
list.addNode(44)
list.addNode(145)


puts list.contains(44)
puts list.contains(88)
# puts list.head.value

# Class linkedlist = function(){
#   //some methods

# };
# linkedlist.prototype.addnode = function(val){
#     this.value=val
#   }

# Class makenode = function(value ){
# // 
# LinkedList.apply(this, arguments)
# this.value = value;
# };

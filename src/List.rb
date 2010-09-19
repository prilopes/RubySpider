class List

  attr_reader :size, :first, :last
  
  def initialize
    @first = nil
    @last = nil
    @size = 0
  end

  def empty?
    @first.nil? && @last.nil?  
  end

  def add(value, where=:as_last)
    new_node = Node.new value

    if empty?
      @last = new_node
      @first = new_node
    else 
      if where == :as_last
        new_node.previous_node = @last
        @last = new_node
      else
        new_node.next_node = @first
        @first = new_node
      end
    end

    @size += 1
  end

  def remove(which=:last)
    if empty?
      nil
    else
      @size -= 1
      if size == 0
        aux = @last
        @last = nil
        @first = nil
        aux
      else
        if which == :last
          aux = @last
          @last = aux.previous_node
          @last.next_node = nil
          aux
        else
          aux = @first
          @first = aux.next_node
          @last.previous_node = nil
          aux        
        end
      end
    end
  end
end

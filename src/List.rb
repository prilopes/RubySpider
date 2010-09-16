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
      if where = :as_last
        new_node.previous_node = @last
        @last = new_node
      end        
    end

    @size += 1
  end
end

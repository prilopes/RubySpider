class Node

  def initialize(value)
    @value = value
    @previous_node = nil
    @next_node = nil
  end

  def first?
    @previous_node.nil?
  end

  def last?
    @next_node.nil?
  end
end

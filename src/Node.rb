class Node

  attr_writer :previous_node, :next_node

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

  def to_s
    @value.to_s
  end
end

require "src/Node"
require "test/unit"

class NodeTest < Test::Unit::TestCase

	def test_node_is_last_node
		node = Node.new('info')
		assert node.last?
	end

	def test_node_is_first_node
		node = Node.new('info')
		assert node.first?
	end
end

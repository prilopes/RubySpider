require "src/List"
require "src/Stack"
require "test/unit"

class StackTest < Test::Unit::TestCase

	def test_on_create_stack_is_empty_and_size_is_zero
		stack = Stack.new

		assert stack.empty?
    assert_equal 0, stack.size
    assert_equal nil, stack.top
	end

  def test_push_elements
    stack = Stack.new
    
    stack.push('plate 1')
    assert_equal 'plate 1', stack.top.to_s

    stack.push('plate 2')
    assert_equal 'plate 2', stack.top.to_s

    stack.push('plate 3')
    assert_equal 'plate 3', stack.top.to_s

    assert_equal 3, stack.size
  end

  def test_pop_elements
    stack = Stack.new
    
    stack.push('plate 1')
    stack.push('plate 2')
    stack.push('plate 3')

    assert_equal 'plate 3', stack.pop.to_s
    assert_equal 'plate 2', stack.top.to_s
    assert_equal 2, stack.size

    assert_equal 'plate 2', stack.pop.to_s
    assert_equal 'plate 1', stack.top.to_s
    assert_equal 1, stack.size

    assert_equal 'plate 1', stack.pop.to_s
    assert_equal nil, stack.top
    assert_equal 0, stack.size

    assert_equal nil, stack.pop
  end
end

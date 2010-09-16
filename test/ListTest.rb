require "src/List"
require "test/unit"

class ListTest < Test::Unit::TestCase

  def test_list_is_empty
    list = List.new
    assert list.empty?
  end

  def test_check_list_size
    list = List.new
    assert_equal 0, list.size
  end

  def test_adds_first_element
    list = List.new
    assert list.add('node')
    assert_equal 'node', list.first.to_s
    assert_equal 'node', list.last.to_s
    assert_equal 1, list.size
  end

  def test_adds_more_elements_to_list
    list = List.new
    
    list.add('node')
    assert_equal 'node', list.first.to_s
    assert_equal 'node', list.last.to_s
    assert_equal 1, list.size

    list.add('node as first', :as_first) 
    assert_equal 'node', list.last.to_s
    assert_equal 'node as first', list.first.to_s
    assert_equal 2, list.size

    list.add('node as last', :as_last)
    assert_equal 'node as first', list.first.to_s
    assert_equal list.first.next_node, list.last.previous_node
    assert_equal 'node as last', list.last.to_s
    assert_equal 3, list.size
  end
end

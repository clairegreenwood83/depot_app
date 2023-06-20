require "test_helper"

class CartTest < ActiveSupport::TestCase

  def setup
    @cart = Cart.new
  end

  test "add_product should increase the quantity of an exisiting line item by one" do
    line_item = @cart.add_product(products(:one))
    assert line_item.save
    assert_equal 1, @cart.line_items.size

    line_item = @cart.add_product(products(:one))
    assert line_item.save
    assert_equal 1, @cart.line_items.size
    assert_equal 2, @cart.line_items[0].quantity
  end

  test "add_product should create a new line item for non-exisiting products" do
    line_item_one = @cart.add_product(products(:one))
    line_item_two = @cart.add_product(products(:two))

    assert line_item_one.save
    assert line_item_two.save
    assert_equal 2, @cart.line_items.size
  end
end

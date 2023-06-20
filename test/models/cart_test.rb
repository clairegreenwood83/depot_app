require "test_helper"

class CartTest < ActiveSupport::TestCase

  def setup
    @cart = Cart.new
  end

  test "add_product increases the quantity of an exisiting line item by one" do
    line_item = @cart.add_product(products(:one))
    assert line_item.save
    assert_equal 1, @cart.line_items.size

    line_item = @cart.add_product(products(:one))
    assert line_item.save
    assert_equal 1, @cart.line_items.size
    assert_equal 2, line_item.quantity
  end

  test "add_product creates a new line item for non-exisiting products" do
    line_item_one = @cart.add_product(products(:one))
    line_item_two = @cart.add_product(products(:two))

    assert line_item_one.save
    assert line_item_two.save
    assert_equal 2, @cart.line_items.size
  end

  test "total_price calculates the correct total price of the cart" do
    product1 = (products(:one))
    product2 = (products(:ruby))
    line_item_one = LineItem.new(product: product1, quantity: 2)
    line_item_two = LineItem.new(product: product2, quantity: 3)
    @cart.line_items << line_item_one
    @cart.line_items << line_item_two

    expected_total_price = (product1.price * line_item_one.quantity) + (product2.price * line_item_two.quantity)

    total_price = @cart.total_price

    assert_equal expected_total_price, total_price
  end
end

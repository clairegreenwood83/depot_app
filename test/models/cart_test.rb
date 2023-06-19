require "test_helper"

class CartTest < ActiveSupport::TestCase

  def setup
    
  end

  test "add_product should increase the quantity of an exisiting line item by one" do
    line_item = LineItem.create(product: products(:one), quantity: 1)
    @cart = Cart.new

    line_item = @cart.add_product(products(:one))
    line_item = @cart.add_product(products(:one))

    assert line_item.save
    assert_equal 2, @cart.line_items.size
  end

  #test "add_product should create a new line item for non-exisiting products" do
    
    #assert 
  #end
end

require "test_helper"

class CartsControllerTest < ActionDispatch::IntegrationTest

  test "should create cart" do
    assert_difference("Cart.count") do
      post cart_url, params: { cart: {  } }
    end
    assert_redirected_to cart_url(Cart.last)
  end

  test "should destroy cart" do
    post line_items_url, params: {product_id: products(:ruby).id}
    
    assert_difference("Cart.count", -1) do
      delete cart_url(@cart)
    end

    assert_redirected_to store_index_url
  end
end

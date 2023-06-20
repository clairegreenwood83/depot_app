require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase

  test "add to cart button reveals cart" do
    visit store_index_url
    click_on 'Add to Cart', match: :first

    assert_selector '#cart', visible: :all
    assert_text 'Your Cart'
  end

  test "empty cart button hides cart" do
    visit store_index_url
    click_on 'Add to Cart', match: :first
    click_on 'Empty Cart', match: :first

    assert_text 'Your cart is currently empty'
  end
end


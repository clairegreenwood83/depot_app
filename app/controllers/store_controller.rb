class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    session[:access_count] ||=0
    session[:access_count] +=1
  end
end

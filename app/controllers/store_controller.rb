class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    session[:access_count] ||=0
    session[:access_count] +=1
  end
end

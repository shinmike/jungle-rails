class ProductsController < ApplicationController

  def index
    # byebug 
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end

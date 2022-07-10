class Public::CartsController < ApplicationController
  def index
  end
  
  def show
    @cart = Cart.new
    @carts = Cart.where(params[:id])
    @customer = Customer.find(params[:id])
    @product_types = ProductType.where(params[:id])
    @jpear = Jpear.where(params[:id])
  end
  
  def create
  
  end
  
  def update
  
  end
  
  def destroy
    
  end
  
end

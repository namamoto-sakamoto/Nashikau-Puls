class Public::OrdersController < ApplicationController
  def show
    @order = Order.new
    @orders = Order.where(params[:id])
    @customer = Customer.find(params[:id])
  end
  
  def create
    @oder = Order.new(order_params)
    if @order.save
      redirect_to  public_cart_path(@order.customer_id)
    else
      @order = Order.new
      @orders = Order.where(params[:id])
      @customer = Customer.find(params[:id])
      render :show
    end   
  end
  
  private
  
  def customer_params
    params.require(:order).permit(:customer_id, :postcode, :address, :name, :name_kana, :phone_number, :bill)
  end
end

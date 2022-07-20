class Public::OrdersController < ApplicationController
  def show
    @order = Order.new
    @orders = Order.where(params[:id])
    @customer = Customer.find(params[:id])
    @product_type = ProductType.where(params[:id])
    @jpear = Jpear.where(params[:id])
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to  public_cart_path(@order.customer_id)
    else
      @order = Order.new
      @orders = Order.where(params[:id])
      @customer = Customer.find(params[:id])
      render :show
    end
    
    # カート内商品情報を注文詳細画面に持っていってカート内を空にする記述
    @order.customer_id.cart_items.each do |cart_item|
      @order_detail = OrderDetail.new
      @order_detail.product_type_id = cart_item.product_type_id
      @order_detail.amount = cart_item.amount
      @order_detail.total = cart_item.product_type.tax_price
      @order_detail.order_id = @order.id
      @order_detail.save
    end
  end
  
  def update
    @product_type = ProductType.where(params[:id])
    @jpear = @product_type.where(params[:jpear_id])
    if @order.update(@jpear)
      redirect_to public_order_path(@order.customer_id)
    else
      @order = Order.new
      @orders = Order.where(params[:id])
      @customer = Customer.find(params[:id])
      @product_type = ProductType.where(params[:id])
      @jpear = @product_type.where(params[:jpear_id])
      render :show
    end  
  end  
  
  private
  
  def order_params
    params.require(:order).permit(:customer_id, :postcode, :address, :name, :name_kana, :phone_number, :bill)
  end
end

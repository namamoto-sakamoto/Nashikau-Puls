class Public::OrdersController < ApplicationController
  def index
    @orders = Order.where(customer: current_farmer.customers).page(params[:page]).per(9)
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      # カート内商品を注文詳細に移してカート内を空にする
      @cart = Cart.where(customer_id: @order.customer_id)
      @cart.each do |cart|
        @order_detail = OrderDetail.new
        @order_detail.product_type_id = cart.product_type_id
        @order_detail.postcode = cart.postcode
        @order_detail.address = cart.address
        @order_detail.name = cart.name
        @order_detail.name_kana = cart.name_kana
        @order_detail.phone_number = cart.phone_number
        @order_detail.shipping_address = cart.shipping_address
        @order_detail.total = cart.amount
        @order_detail.order_id = @order.id
        @order_detail.save
      end
      # カート内商品を全て削除
      @cart.destroy_all
      
      flash[:success] = "注文を確定しました！"
      redirect_to  public_orders_path
    else
      flash[:alert] = '注文に失敗しました'
      redirect_to public_cart_path(@order.customer_id)
    end
  end
  
  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      flash[:success] = "徴収ステータスが変更されました！"
      redirect_to  public_orders_path
    else
      flash[:alert] = '徴収ステータス変更に失敗しました'
      @orders = Order.where(customer: current_farmer.customers).page(params[:page]).per(9)
      render :index
    end  
  end 
  
  def destroy
    @Order = Order.find(params[:id])
    @Order.destroy
    @Order.order_details.destroy
    redirect_to public_orders_path
  end
  
  private
  
  def order_params
    params.require(:order).permit(:customer_id, :status, :bill)
  end
end

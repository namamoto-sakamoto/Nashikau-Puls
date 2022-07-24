class Public::CartsController < ApplicationController
  protect_from_forgery

# 注文フォーム
  def new
    @cart = Cart.new
    @carts = Cart.where(customer_id: params[:format])
    @customer = Customer.find(params[:format])
    @deliveries = Delivery.where(customer_id: @customer.id)
    @product_types = ProductType.where(params[:format])
    @jpear = Jpear.where(params[:format])
  end  
  # カートに追加するボタンでcreate
  def create
    @product_types = ProductType.where(jpear_id: params[:cart][:jpear])
    @customer = Customer.find(params[:id])
    @jpear = Jpear.where(params[:id])
    @cart = Cart.new(cart_params)
    if @cart.save
      flash[:success] = "カートに追加しました"
      redirect_to public_cart_path(@cart)
    else
      render :new
  end
  
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id
    if @cart_item.save
      redirect_to cart_items_path
    else
      @customer = Customer.find(current_customer.id)
      redirect_to public_item_path(@cart_item.item_id)
    end
  end

# カート内一覧画面
  def show
    # @carts = Cart.where(params[:id])
    # @customer = Customer.find(params[:id])
    # @deliveries = Delivery.where(customer_id: @customer.id)
    # @product_types = ProductType.where(params[:id])
    # @jpear = Jpear.where(params[:id])
  end
  
# カート画面での数量変更ボタンでupdate
  def update
  end
  
# カート画面での一つの商品の削除
  def destroy
  end
  
  private
  
  def cart_params
     params.require(:cart).permit(:customer_id, :jpear_id, :product_type_id, :amount )
  end
end

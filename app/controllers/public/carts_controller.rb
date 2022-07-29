class Public::CartsController < ApplicationController
  protect_from_forgery

# 注文フォーム
  def new
    if params[:customer][:jpear] == ""
      redirect_to public_customers_path
    else  
      @cart = Cart.new
      # @carts = Cart.where(customer_id: params[:format])
      @customer = Customer.find(params[:format])
      @deliveries = Delivery.where(customer_id: @customer.id)
      @product_types = ProductType.where(jpear_id: params[:customer][:jpear])
      @jpear = Jpear.find(params[:customer][:jpear])
    end  
  end 
  
  # カートに追加するボタンでcreate
  def create
    @cart = Cart.new(cart_params)
    @customer = Customer.find(params[:cart][:customer_id])
    
    case params[:cart][:shipping_address]
    when '0' # お持ち帰り
      @cart.postcode = @customer.postcode
      @cart.address = @customer.address
      @cart.name = @customer.last_name + @customer.first_name
      @cart.name_kana = @customer.last_name_kana + @customer.first_name_kana
      @cart.phone_number = @customer.phone_number
    when '1' # ご自身の住所
      @cart.postcode = @customer.postcode
      @cart.address = @customer.address
      @cart.name = @customer.first_name + @customer.last_name
      @cart.name_kana = @customer.first_name_kana + @customer.last_name_kana
      @cart.phone_number = @customer.phone_number
    when '2' # 登録済みの住所
      if params[:cart][:delivery_id] == ""
        return
      else
        @delivery = Delivery.find(params[:cart][:delivery_id])
        @cart.postcode = @delivery.postcode
        @cart.address = @delivery.address
        @cart.name = @delivery.name
        @cart.name_kana = @delivery.name_kana
        @cart.phone_number = @delivery.phone_number
      end
    else # それ以外
    end
    
    if @cart.save
      flash[:success] = "カートに商品を追加しました!"
      redirect_to public_cart_path(params[:cart][:customer_id])
    else
      flash[:alert] = 'カートに追加できませんでした'
      redirect_to public_cart_path(params[:cart][:customer_id])
    end
  end

# カート内一覧画面
  def show
    @carts = Cart.where(customer_id: params[:id])
    @customer = Customer.find(params[:id])
    @order = Order.new
  end
  
# カート画面での数量変更ボタンでupdate
  def update
    @cart = Cart.find(params[:cart][:id])
    if @cart.update(cart_params)
      flash[:success] = "注文内容を変更しました！"
      redirect_to public_cart_path(params[:id])
    else
      @carts = Cart.where(customer_id: params[:cart][:customer_id])
      @customer = Customer.find(params[:cart][:customer_id])
      @deliveries = Delivery.where(customer_id: @customer.id)
      @product_types = ProductType.where(params[:cart][:customer_id])
      @jpear = Jpear.where(params[:cart][:customer_id])
      @order = Order.new
      render :show
    end
  end
  
# カート画面での一つの商品の削除
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to public_cart_path(params[:format])
  end
  
  private
  
  def cart_params
     params.require(:cart).permit(:customer_id, :product_type_id, :amount, :shipping_address)
  end
end

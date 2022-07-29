class Public::DeliveriesController < ApplicationController
  def show
    @delivery = Delivery.new
    @deliveries = Delivery.where(customer_id: params[:id])
    @customer = Customer.find(params[:id])
  end
  
  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      redirect_to public_delivery_path(@delivery.customer_id)
    else
      @customer = params.require(:delivery).permit(:customer_id)
      @deliveries = Delivery.where(customer_id: @customer[:customer_id])
      @customer = Customer.find(@customer[:customer_id])
      render :show
    end  
  end  

  def edit
    @delivery = Delivery.find(params[:id])
  end
  
  def update
    @delivery = Delivery.find(params[:id])
    if @delivery.update(delivery_params)
      flash[:success] = "送り先情報のアップデートが完了しました！"
      redirect_to public_delivery_path(@delivery.customer_id)
    else
      @delivery = Delivery.find(params[:id])
      render :edit
    end
  end  

  private
  
  def delivery_params
    params.require(:delivery).permit(:customer_id, :name, :name_kana, :postcode, :address, :phone_number)
  end
end

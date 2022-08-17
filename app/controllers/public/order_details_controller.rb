class Public::OrderDetailsController < ApplicationController
  before_action :authenticate_farmer!

  def show
    @order_details = OrderDetail.where(order_id: params[:id])
  end
end

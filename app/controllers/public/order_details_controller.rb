class Public::OrderDetailsController < ApplicationController
  def index
  end

  def show
    @order_details = OrderDetail.where(order_id: params[:id])
  end
end

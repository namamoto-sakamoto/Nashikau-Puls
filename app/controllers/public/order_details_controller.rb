class Public::OrderDetailsController < ApplicationController

  def show
    @order_details = OrderDetail.where(order_id: params[:id])
  end
end
